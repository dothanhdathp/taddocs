# putty.exe

Sử dụng qua command in __console__

```bash
plink.exe -serial COM45 -sercfg 115200,8,n,1,X
```
## plink.exe
```bash
putty.exe -serial COM45 -sercfg 115200,8,n,1
```

## Sử dụng plink để dùng serial com trong command

Ở đây mình sẽ lưu vào tệp tin `pcom.bat`

`%~1`, `%~2` là sử dụng cho hai đầu vào. Cách dùng ví dụ như sau:

```bat
pcom COM1 115200
```
### Nội dung tệp
```bat
@echo off

:: Set your variables here
:loop

:: Execute the plink command
plink.exe -serial %~1 -sercfg %~2,8,n,1,X < break
plink.exe -serial %~1 -sercfg %~2,8,n,1,X
:: Go back to the start of the loop
goto loop
```