# Keybindings

## Về Keybindings

_Keybindings_ là chức năng <u>_viết lại_</u> một vài phím tắt của VSCode. Chức năng này cực kỳ linh động khi có thể thêm một số điều kiện để phím tắt đó chỉ hoạt động với một số loại tệp nhất định.

Ngoài ra chức năng này cũng giống _Settings_, có thể thêm một số định nghĩa mới và bảo vệ bằng điều kiện nó sẽ không ảnh hưởng gì đến các phím tắt chung.

Đường dẫn cục bộ đến tệp cấu hình của _Keybindings_ ở đây trong trường hợp cài đặt mặc định:

```txt
%USERPROFILE%\AppData\Roaming\Code\User\keybindings.json
```

Trong trường hợp cài đặt tự do thì có thể làm cách này:

Mở bảng `Keybroard Shortcuts` theo một trong các cách sau:

1. Truy cập theo đường dẫn `File > Preferences > Keybroard Shortcuts`
1. Sử dụng tổ hợp phím tắt `Ctrl+K, Ctrl+S`
1. Đường dẫn thông thường là nằm cùng một thư mục với `settings.json`, tại:
    ```txt
    %USERPROFILE%\AppData\Roaming\Code\User
    ```

Ấn vào biểu tượng dưới đây để chuyển sang tệp `keybindings.json`

## Một số cài đặt

??? suggest "Đóng các thẻ khác trừ thẻ chính"
    ```json
    {
        "key": "ctrl+k ctrl+w",
        "command": "workbench.action.closeEditorsInOtherGroups"
    },
    {
        "key": "ctrl+k ctrl+w",
        "command": "workbench.action.closeOtherEditors"
    },
    ```