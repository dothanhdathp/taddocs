# Run

## Tự tạo lệnh hệ thống trong hộp thoại `run`

1. Mở hộp `run` với
    1. Tổ hợp phím `Windows+R`
    1. Chuột phải vào biểu tượng thanh `Start` chọn `Run`
1. Gõ vào hộp thoại chữ `regedit`. __Enter__!
1. Điền vào đường link sau:
    ```txt
    Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\
    ```
1. Ở bảng bên trái, tìm thư mục `App Paths`
1. Chuột phải vào thư mục `App Paths`, chọn ___New/Key___
1. Đặt tên lệnh muốn tạo kèm đuôi `.exe`
1. Nhấn vào tệp vừa tạo, sang bảng bên phải, chuột phải.
1. Chọn ___New/Key___. Lần này không cần đặt lại tên.
1. Nhấn đúp vào tệp vừa tạo lần nữa sẽ nhảy ra hộp thoại. Chỗ __Value Data__ điền vào đường dẫn ứng dụng muốn mở.

> Xong! Từ giờ khi mở hộp thoại `run` và gõ lệnh đó vào, ứng dụng sẽ được mở.