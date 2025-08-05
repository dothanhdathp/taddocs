# Usercmd

Đây là một bộ tổ hợp chỉnh sửa riêng của tôi.

## Tạo

Ít người biết rằng, có thể viết sẵn các tệp `script` dạng `.batch` và có thể dùng chúng ở dạng cục bộ _(tức là gọi ở bất cứ đâu)_ ở trên Windows. Để làm được điều đó thì hãy làm các bước sau:

- Vào đường dẫn `%USERPROFILE%` trên ___explorer___ tạo một thư mục tên ví dụ như `.usercmd`
- Và thêm đường dẫn đó vào __Environment Variables__
    - _Có thể xem hướng dẫn ở đây_ [Environment Variables](os-windows-environment-variables.md)

## Các lệnh thường dùng

### delall 

- Xoá tất cả những gì có trong thư mục nơi gõ lệnh này.
- Lệnh này sinh ra bởi vì nếu bạn đã muốn xoá tất cả trong một thư mục trên Windows. Ai bảo command xoá của Windows nó siêu củ chuối.


```batch title="delall.bat"
@echo off
del /q *
del /q *.*
for /d %%x in (*) do @rd /s /q %%x
```

### note

Cái này để lưu trữ lại một vài command hữu dụng hoặc ghi chú một số thứ quan trọng cho từng máy. Thường thì để tra cứu trực tiếp trong cmd cho tiện, đỡ phải lục lọi mở thêm notepad hoặc gì đó. Nhược điểm đương nhiên là mở ra `console` nên khả năng tương tác với đa ngôn ngữ rất kém.


```batch title="note.bat"
@echo off

set "rfs=%USERPROFILE%\.user_cmd\NOTE"

:: Check file exist
IF NOT EXIST "%rfs%" (
	echo Folder not exist! Create new one.
	mkdir %rfs%
)

IF NOT EXIST "%rfs%\default.txt" (
	echo Create note file
	type nul > %rfs%\default.txt
	goto EDIT
)

IF "%1"=="-e"     goto EDIT
IF "%1"=="--edit" goto EDIT

:: OPEN
more %rfs%\default.txt
goto QUIT

:EDIT
explorer "%rfs%\default.txt"
goto QUIT

:: Quit game
:QUIT
```

### git-here

> Mở git-bash tại thư mục gõ `cmd` luôn.
> - Nếu dùng trực tiếp thì `git-here` trong cửa sổ _console_ nó sẽ thay thế _console_ hiện tại thành _bash_.
> - Nếu muốn mở cửa sổ khác thì dùng `start git-here`


```batch title="git-here"
@echo off

"C:\Program Files\Git\bin\bash.exe" --cd="%CD%"
```

### sshw

Dùng để ssh đến các địa chỉ IP đã biết. Lý do để làm cái này là vì trên công ty mình có rất nhiều địa chỉ ip


```batch title="sshw.bat"
@echo off
setlocal enabledelayedexpansion

:: Define the parameter for each machine (usernames and servers)
set "u_0=mvn"
set "s_0=192.168.100.178"
set "p_0=mvn@123"
set "n_0=Virtual machine on Server, root account"

set "u_1=dtdat"
set "s_1=192.168.100.102"
set "p_1=<SPACE>"
set "n_1=Local machine"

set "u_2=dtdat"
set "s_2=192.168.100.203"
set "p_2=<SPACE>"
set "n_2=Server build for EVO/KAMA"

set "u_3=dtdat"
set "s_3=192.168.100.178"
set "p_3=<SPACE>"
set "n_3=Z101, S210, ... MnM project. Virtual machine on Server"

set "u_4=davis"
set "s_4=192.168.100.203"
set "p_4=<SPACE>"
set "n_4=Server build for EVO/KAMA, release main account"

set "u_5=ccdev"
set "s_5=192.168.101.68"
set "p_5=123456"
set "n_5=Z101, S210, ... MnM project"

set "size=5"

:: Check if the argument is provided
if "%~1"=="" (
	goto SHOW
)

:: For EDIT text
if "%~1"=="-e" (
	sublime "%USERPROFILE%\.user_cmd\sshw.bat"
	goto QUIT
)

:: Set the selected index based on the argument
set "sel=%~1"

:: Validate the selection
if %sel% lss 0 (
	echo Invalid selection. Please provide a number between 0 and %size%.
	goto SHOW
)

if %sel% gtr %size% (
	echo Invalid selection. Please provide a number between 0 and %size%.
	goto SHOW
)

:: Set the SSH parameters based on the selection
set /a "index=sel"

set "username=!u_%index%!"
set "server=!s_%index%!"
set "pass=!p_%index%!"
set "note=!n_%index%!"

:CALL_SSH
echo NOTE: !note!
echo PASS: !pass!
ssh !username!@!server!

goto QUIT

:SHOW
for /L %%i in (0,1,%size%-1) do (
	echo ----- MACHINE %%i -----
	echo Username : !u_%%i!
	echo Server   : !s_%%i!
	echo Password : !p_%%i!
	echo Note     : !n_%%i!
	echo.
)

:QUIT
rem do nothing ...
```

### mkcmd

Tạo command và xóa command. Dự định mong muốn là làm nó giống như lệnh ___alias___ của __Ubuntu__ cho tiện.

- `mkcmd <command>` sẽ tự động tạo một _command_ mới có tên như thế vào ngay lập tức mở trình duyệt chỉnh sửa văn bản mặc định cho người dùng sửa đổi.
- `mkcmd -d <command>`: Với cờ `-d` nghĩa là ___delete___, cờ này sẽ chuyển thao tác sang lệnh xóa _command_ được đề cập tới tránh làm lãng phí bộ nhớ.

```batch title="mkcmd.bat"
@echo off

IF "%1"=="" goto ERR_EMPTY_ALIAS
IF "%1"=="-d" goto REMOVE_ALIAS
goto CREATE_ALIAS

:ERR_EMPTY_ALIAS
echo Error: use alias [command_name]
goto QUIT

:ERR_DELETE_FALSE
echo Error: use alias -d [command_name]
goto QUIT

:CREATE_ALIAS
set "filebat=%USERPROFILE%\.user_cmd\%1.bat"

IF NOT EXIST "%filebat%" (
	echo Create %1 command, editting ...
	type nul > %filebat%
	echo @echo off > %filebat%
	sublime %filebat%
) ELSE (
	sublime %filebat%
)
goto QUIT


:REMOVE_ALIAS
IF "%2"=="" goto ERR_DELETE_FALSE

set "filebat=%USERPROFILE%\.user_cmd\%2.bat"

IF NOT EXIST "%filebat%" (
	echo delete alias %2 false
) ELSE (
	del \s \q %filebat%
	echo delete alias %2 suggest
)
goto QUIT

:QUIT
```

### chrome

Bật __Google Chrome__ dựa bằng nhiều ___accounts___ khác nhau

```batch title="chrome.bat"
@echo off

"C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile %1"
```

### msys

Sử dụng msys2 trong cmd (tuyệt vời luôn ạ)


```batch title="msys.bat"
@echo off 

IF "%1"=="-m64" (
	C:\msys64\msys2_shell.cmd -defterm -here -no-start -mingw64 -where "%CD%"
	exit /b
)
IF "%1"=="-m32" (
	C:\msys64\msys2_shell.cmd -defterm -here -no-start -mingw32 -where "%CD%"
	exit /b
)
IF "%1"=="-c" (
	C:\msys64\msys2_shell.cmd -defterm -here -no-start -ucrt64 -where "%CD%"
	exit /b
)
IF "%1"=="-u" (
	C:\msys64\msys2_shell.cmd -defterm -here -no-start -ucrt64 -where "%CD%"
	exit /b
)

C:\msys64\msys2_shell.cmd -defterm -here -no-start -ucrt64 -where "%CD%"
```

### note

Cái lệnh này dùng để lưu và tạo ghi chú. Thi thoảng khá tiện. Với hay công năng chính:

- Gõ `note` thì nó sẽ cho xem những gì đã được lưu.
- Dùng `note -e` thì vào chế độ sửa.

Đây là mã:

```batch title="note.bat"
@echo off

set "rfs=%USERPROFILE%\.usercmd\NOTE"

:: Check file exist
IF NOT EXIST "%rfs%" (
	echo Folder not exist! Create new one.
	mkdir %rfs%
)

IF NOT EXIST "%rfs%\note.txt" (
	echo Create note file
	type nul > %rfs%\note.txt
	goto EDIT
)

IF "%1"=="-e"     goto EDIT
IF "%1"=="--edit" goto EDIT

:: OPEN
more %rfs%\note.txt
goto QUIT

:EDIT
explorer "%rfs%\note.txt"
goto QUIT

:: Quit
:QUIT
```