# Write

Hướng dẫn viết cmd script cho Windows.

## Biến

### SET
Biến được xác định với `SET`

??? note "Syntax"
    ```batch
    Syntax
        SET variable
        SET variable=string
        SET "variable=string"
        SET "variable="

        SET /A "variable=expression"
        SET /P variable=[promptString]
        SET "

    Key
    variable   A new or existing environment variable name e.g. _num
    string     A text string to assign to the variable.
    /A         Arithmetic expression see full details below.
    /P         Prompt for user input.
    ```

- `SET "S=%Value%"`: Khai báo một biến là string
- `SET /A "S=%Value%"`: Khai báo một biến theo giá trị số nguyên của nó
- `%S%`: Giá trị của biến được `SET` thì sẽ được gọi ra bằng cách đặt giữa hai đấu `%`

!!! warning "Phân biệt"
    Giá trị biến phân biệt cả dấu `""`

Xem xét ví dụ sau này:

```bat
@echo off

set "A=5"
set B="5"
set "C=5"

ECHO %A%
ECHO %B%
ECHO %C%
```

Kết quả:

```txt
5
"5"
5
```

Thấy không, `%A% != "5"` vì dấu `"`

## SETLOCAL/ENDLOCAL

Tương tự như `SET` nhưng chỉ có tính chất cục bộ. Giá trị biến môi trường được cài đặt bằng `SET` sẽ bị `SETLOCAL` đề (nếu trùng tên) và lại được hoàn trả sau khi `ENDLOCAL`.

Xem ví dụ dưới đây:

```bat
@echo off
SET MYVAR=Global
SETLOCAL
SET MYVAR=Local
ECHO Inside SETLOCAL: %MYVAR%
ENDLOCAL
ECHO After ENDLOCAL: %MYVAR%
```
Kết quả:

```txt
Inside SETLOCAL: Local
After ENDLOCAL: Global
```
## IF

### IF
`IF` và so sánh. Và nên nhớ nó tính cả dấu `"` trong giá trị. Ví dụ:

```baT
set "A=5"

IF %A%=="5" ECHO TRUE 1
IF %A%==5 ECHO TRUE 2
IF "%A%"=="5" ECHO TRUE 3
```
```TXT
TRUE_2
TRUE_3
```

Với nhiều giá trị hơn, câu lệnh của _script_ sẽ được để trong dấu `()`

```bash
@echo off

set "A=5"

IF %A%==5 (
	ECHO 1
	ECHO 2
	ECHO 3
	ECHO 4
	ECHO 5
)
```

!!! warning "Dấu cách"
    - _Phải sử dụng dấu cách ra y hệt, ngôn ngữ này không nhận dược nếu bạn để dấu cách liên tiếp hoặc sai vị trí_
    - _Xuống dòng cũng là điều kiện bắt buộc_

### IF/ELSE

```bash
@echo off

set A="5"

IF %A%==5 (
	ECHO 1
	ECHO 2
	ECHO 3
	ECHO 4
	ECHO 5
) ELSE (
    ECHO -1
	ECHO -2
	ECHO -3
	ECHO -4
	ECHO -5
)
```

- `IF/ELSE` chỉ hỗ trợ lồng.
- `IF/ELSE` không có `ELSE IF`

```bash
@echo off

set A="5"

IF %A%==5 (
    ECHO 1
) ELSE (
    IF "%A%"=="5" (
        ECHO 2
    ) ELSE (
        ECHO 3
    )
)
```

## GOTO

`GOTO` đi cùng với một `#flag`, lệnh này sẽ trực tiếp điều hướng đến `#flag`

```bash
@echo off

set A="5"

IF %A%=="5" GOTO CASE_1;
IF %A%==5   GOTO CASE_2;

:CASE_1
ECHO THIS IS CASE_1

:CASE_2
ECHO THIS IS CASE_2
```

Kết quả:

```
THIS IS CASE_1
THIS IS CASE_2
```

Đây không phải là lỗi. Đơn giản là do nhảy đến `CASE_1` thì lệnh sẽ chạy đến `CASE_2`. Khi chương trình đi qua một `#flag`, nó đơn giản là không làm gì cả. Muốn thoát khỏi `script` hãy xem chương tiếp, `EXIT`

## EXIT

- Dùng `EXIT` sẽ thoát khỏi hoàn toàn _termincal_ gọi script đó.
- `EXIT \b` chỉ thoát khỏi tiến trình trong _script_, nếu bạn muốn thoát mà không muốn đóng `console` có thể dùng hàm đó.

## FORFILE

## FOR