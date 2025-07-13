# Windows PATH

## Marco

| Marco            | Meanning              |
| :--------------- | :-------------------- |
| `%ProgramData%`  | `C:\ProgramData`      |
| `%ProgramFiles%` | `C:\Program Files`    |
| `%SystemRoot%`   | `C:\Windows`          |
| `%USERNAME%`     | Computer user name    |
| `%USERPROFILE%`  | `C:\Users\%USERNAME%` |

## Một số đường dẫn khác

### Tạo đường dẫn trong StartMenu

Chuyển `shortcut` của ứng dụng vào trong thư mục này có thể mở ứng dụng đó từ `StartMenu`.

```batch
%ProgramFiles%\Microsoft\Windows\Start Menu\Programs
```
### Chỉnh sửa host file

__Vào đường dẫn sau__

```text
C:\Windows\System32\drivers\etc\
```

Tệp `host` có nội dung như sau:

```batch title="host"
# Copyright (c) 1993-2009 Microsoft Corp.
#
# This is a sample HOSTS file used by Microsoft TCP/IP for Windows.
#
# This file contains the mappings of IP addresses to host names. Each
# entry should be kept on an individual line. The IP address should
# be placed in the first column followed by the corresponding host name.
# The IP address and the host name should be separated by at least one
# space.
#
# Additionally, comments (such as these) may be inserted on individual
# lines or following the machine name denoted by a '#' symbol.
#
# For example:
#
#      102.54.94.97     rhino.acme.com          # source server
#       38.25.63.10     x.acme.com              # x client host
# localhost name resolution is handled within DNS itself.
#	127.0.0.1       localhost
#	::1             localhost
```

Thêm một vài dòng cấu hình vào cuối tệp, ví dụ như:

```txt
192.168.100.226     pi
```

Vậy là từ giờ trờ đi địa chỉ ip `192.168.100.226` đã được gán trực tiếp với _title_ `pi`, có thể dùng lệnh ping để kiểm tra.

```txt
ping pi
```