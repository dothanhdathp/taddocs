# Startup Process on Windows

## Tác dụng
- Khởi động chương trình ngay khi mở máy cho hệ điều hành Windows.
- Cách này dùng được cho cả `.bat` _scripts_ lẫn chương trình bình thường.

## Cách làm

### Với chương trình

1. Mở tệp startup bằng lệnh `shell:startup` trong ___cmd___ hoặc hộp thoại ___run___
    - Lệnh đó sẽ mở ra một hộp thực thi tại địa chỉ:
        ```txt
        %USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
        ```
1. Đưa trực tiếp _shortcut_ của chương trình muốn chạy lúc khởi động vào đây.

### Với tệp lệnh _script_

1. Mở tệp startup bằng lệnh `shell:startup` trong ___cmd___ hoặc hộp thoại ___run___
1. Tạo một tệp tiền thực thi, chẳng hạn là `my_startup.bat`. Để nội dung muốn khởi động. Chẳng hạn đây là khi mình muốn bật project ngay lúc mở máy:
    ```bat
    @echo off

    start cmd.exe /k "code D:\Doc\Book"
    start cmd.exe /k "code D:\Doc\Documents"
    start cmd.exe /k "code D:\Doc\MarpSlide"
    ```
1. Tạo một tệp bất kỳ với đuôi là `.vbs`, để nội dung như sau:
    ```ps1
    Set WshShell = CreateObject("WScript.Shell")
      ' Start Everything for my work in startup
      WshShell.Run chr(34) & "%USERPROFILE%\.user_cmd\my_startup.bat" & Chr(34), 0
    Set WshShell = Nothing
    ```
1. Trong đó `"%USERPROFILE%\.user_cmd\my_startup.bat"` là tệp _script_ thực thi mong muốn được tạo vừa rồi.