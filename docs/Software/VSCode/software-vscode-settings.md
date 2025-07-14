# Configuration

## PATH

Thông thường sau khi cài đặt nếu không có chỉnh sửa gì thêm thì chương trình sẽ nằm tại đại chỉ này:

```txt
%USERPROFILE%\AppData\Local\Programs\"Microsoft VS Code"
```

## Settings

Tệp cài đặt của __VSCode__ có tên `settings.json`. Tệp này có hai tệp sẽ ảnh hưởng đến _workspace_ được mở.

### Settings Global

Tệp cấu hình chung của __VSCode__ nằm ở đây:

```txt
%USERPROFILE%\AppData\Roaming\Code\User\settings.json
```

Nếu không có cài đặt cục bộ thì nó sẽ sử dụng cấu hình trong tệp đó.

### Settings Local

Mỗi một _workspace_ đều có các tệp cấu hình riêng bên trong thư mục `.vscode`. Có thể dễ dàng tìm thấy tệp `settings.json` ở trong đó. Tệp này là cấu hình riêng cho _workspace_, tức là nó sẽ có ưu tiên cao hơn tệp cục bộ. Ví dụ nếu bạn muốn có phông chữ to hơn ở dự án của riêng bạn thôi thì cấu hình ở tệp này.

```txt
.vscode\settings.json
```

### Thay đổi settings

- Không nhất thiết phải vào đường dẫn. Có thể từ thanh điều hướng bên trên vào ___File/Preferences/Settings___
- Tất cả các cài đặt đều ở đó và đã được ứng dụng trình bày cả rồi.

Nhưng một số cài đặt nếu muốn sửa mà tìm thì lâu lắn, có thể vào ô tìm kiếm tìm `settings.json`, hoặc `Ctrl+Shift+P` tìm ___Open User Settings___

Có một số cài đặt như sau:

```js
"terminal.integrated.defaultProfile.windows": "Command Prompt", // Đổi Terminal mặc định được gọi sang CMD
"terminal.integrated.cwd": "${fileDirname}",                    // Mở terminal với đường dẫn tại thư mục làm việc
"terminal.integrated.fontSize": 16,                             // Đổi kích cỡ font cho terminal
"editor.fontFamily": 'JetBrains Mono', 'Consolas', 'Courier New', "monospace", // Đổi font chữ mặc định trong khu vực làm việc
"editor.fontSize": 12.5,                                        // Đổi font size trong khu vực làm việc
"editor.minimap.enabled": false,                                // Tắt minimap bên thanh cuộn
```