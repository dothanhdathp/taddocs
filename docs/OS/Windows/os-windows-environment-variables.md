# Environment Variables

## Thêm __Environment Variables__

Để thêm các __Environment Variables__ dùng các bước sau:

1. Mở __My Computer__, chuột phải và cuộn xuống cuối cùng chọn __Properties__
1. Sau đó tim đến mục __Advanced system settings__
    * ![alt text](img/os-windows-environment-variables-0.png)
1. Trong cửa sổ bật lên hãy chọn __Environment Variables ...__
    * ![alt text](img/os-windows-environment-variables-1.png)
1. Tiếp đến có hai lựa chọn cả __PATH__
    * ![alt text](img/os-windows-environment-variables-2.png)
    * Lựa chọn ở trên là khai báo trên __User__
    * Lựa chọn ở dưới là của __System__
    * Thông thường nên chọn khai báo trong phạm vi __User__ là được. Nhấn đúp vào đó là sẽ có một cửa sổ mới.
    * ![alt text](img/os-windows-environment-variables-3.png)
1. Thêm đường dẫn cho một số __Environment Variables ...__ mà bạn muốn.
1. Kiểm tra:
    * Ví dụ nếu không thể gọi adb ở mọi nơi thì nên thêm đường dẫn `%USERPROFILE%\AppData\Local\Android\Sdk\platform-tools\` vào trong thư mục.
    * Mở hộp thoại __Run__, lệnh `cmd` và gõ thử `adb`. Nếu không báo không tìm thấy tức là thành công rồi đó.