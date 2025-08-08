# Open With ...

*Tạo lệnh __Open With ...__ trong __Windows__*

## Các bước

1. Mở _registry_ bằng __Run__ ➡ `regedit`
1. Đi đến thư mục `Computer\HKEY_CLASSES_ROOT\Directory\Background\shell`
1. Thêm một khóa mới bằng thư mục __New__ ➡ __Key__, ví dụ đặt tên là __appx_shell__
1. Trong __Key__ mới tạo có sẽ mục __(Default)__, ở đây điền câu `prompt` chú thích, ví dụ: __Open with AppX Here__
    1. Tạo thêm khóa __String__ mới, đổi tên thành __Icon__ để thêm `icon`_(không bắt buộc)_
    1. Điền đường dẫn đến `icon`, có thể là tệp `exe` hoặc `ico` đều được
1. Tiếp tục trở lại __Key__ gốc, ở ví dụ này là __appx_shell__
1. __New__ ➡ __Key__ tạo thêm _key_ nữa bên trong, đặt tên là __command__
    1. __String__ `(Default)` của khóa này là command sử dụng để thực thi. Dưới đây là bảng một số ứng dụng:

| 1       | 2                                                                         |
| :------ | :------------------------------------------------------------------------ |
| VS Code | `"C:\Users\dtdat\AppData\Local\Programs\Microsoft VS Code\Code.exe" .`    |
| MSYS2   | `C:\msys64\msys2_shell.cmd -defterm -here -no-start -mingw64 -where "%V"` |