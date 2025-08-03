# ADB
> Android Debug Bridge

## Overview

Là công cụ hỗ trợ _debug_ dành cho các thiết bị __Android__. Công cụ này được phát triển bởi __Google__ giúp đọc các tệp nhật ký hệ thống, truy xuất dữ liệu và điều khiển thiết bị Android. Cái quan trọng là tuân thủ quyền bảo mật hệ thống và phát triển.

## Mở ADB

Trên các thiết bị Android, để mở ADB có thể dùng cách sau:

- Vào `Setting` -> `About Phone` (hoặc `About Device` đại loại vậy).
- Tìm dòng `Build Number`.
- Ấn khoảng 7-9 lần sẽ có popup thông báo đang truy cập vào quyền _developer_.
- Trở lại `Setting` sẽ thấy có thêm lựa chọn cho ___Developer Option___
- Trên cùng luôn có một thanh trượt cho ___Enable/Disable___ cho ___Developer Mode___, mở nó lên trước
- Kéo xuống dưới Enable:
    - `USB Debugging`: Cho phép debug qua __USB__
    - `Wireless Debugging` _(Chỉ từ Andoroid 11)_: Cho phép debug qua __Wifi__

## Bật ADB Wireless

Trong một số trường hợp, ADB Wireless sẽ không có sẵn lựa chọn trong __Developer Settings__ mà cần mở thông qua `ADB USB`, đây là lệnh:

```bash
adb tcpip 5555
adb kill-service
adb start-service
```

- `adb tcpip 5555`
- `adb kill-service` rồi `adb start-service` để _reset service_

## Gửi KeyEvent

```bash
adb shell input keyevent <key_id/key_string>
```
??? "Bảng KeyCode"
    | key_string                       | key_id |
    | :------------------------------- | :----: |
    | KEYCODE_UNKNOWN                  |   0    |
    | KEYCODE_MENU                     |   1    |
    | KEYCODE_SOFT_RIGHT               |   2    |
    | <mark>KEYCODE_HOME</mark>        |   3    |
    | <mark>KEYCODE_BACK</mark>        |   4    |
    | KEYCODE_CALL                     |   5    |
    | KEYCODE_ENDCALL                  |   6    |
    | KEYCODE_0                        |   7    |
    | KEYCODE_1                        |   8    |
    | KEYCODE_2                        |   9    |
    | KEYCODE_3                        |   10   |
    | KEYCODE_4                        |   11   |
    | KEYCODE_5                        |   12   |
    | KEYCODE_6                        |   13   |
    | KEYCODE_7                        |   14   |
    | KEYCODE_8                        |   15   |
    | KEYCODE_9                        |   16   |
    | KEYCODE_STAR                     |   17   |
    | KEYCODE_POUND                    |   18   |
    | KEYCODE_DPAD_UP                  |   19   |
    | KEYCODE_DPAD_DOWN                |   20   |
    | KEYCODE_DPAD_LEFT                |   21   |
    | KEYCODE_DPAD_RIGHT               |   22   |
    | KEYCODE_DPAD_CENTER              |   23   |
    | <mark>KEYCODE_VOLUME_UP</mark>   |   24   |
    | <mark>KEYCODE_VOLUME_DOWN</mark> |   25   |
    | KEYCODE_POWER                    |   26   |
    | KEYCODE_CAMERA                   |   27   |
    | KEYCODE_CLEAR                    |   28   |
    | KEYCODE_A                        |   29   |
    | KEYCODE_B                        |   30   |
    | KEYCODE_C                        |   31   |
    | KEYCODE_D                        |   32   |
    | KEYCODE_E                        |   33   |
    | KEYCODE_F                        |   34   |
    | KEYCODE_G                        |   35   |
    | KEYCODE_H                        |   36   |
    | KEYCODE_I                        |   37   |
    | KEYCODE_J                        |   38   |
    | KEYCODE_K                        |   39   |
    | KEYCODE_L                        |   40   |
    | KEYCODE_M                        |   41   |
    | KEYCODE_N                        |   42   |
    | KEYCODE_O                        |   43   |
    | KEYCODE_P                        |   44   |
    | KEYCODE_Q                        |   45   |
    | KEYCODE_R                        |   46   |
    | KEYCODE_S                        |   47   |
    | KEYCODE_T                        |   48   |
    | KEYCODE_U                        |   49   |
    | KEYCODE_V                        |   50   |
    | KEYCODE_W                        |   51   |
    | KEYCODE_X                        |   52   |
    | KEYCODE_Y                        |   53   |
    | KEYCODE_Z                        |   54   |
    | KEYCODE_COMMA                    |   55   |
    | KEYCODE_PERIOD                   |   56   |
    | KEYCODE_ALT_LEFT                 |   57   |
    | KEYCODE_ALT_RIGHT                |   58   |
    | KEYCODE_SHIFT_LEFT               |   59   |
    | KEYCODE_SHIFT_RIGHT              |   60   |
    | KEYCODE_TAB                      |   61   |
    | KEYCODE_SPACE                    |   62   |
    | KEYCODE_SYM                      |   63   |
    | KEYCODE_EXPLORER                 |   64   |
    | KEYCODE_ENVELOPE                 |   65   |
    | KEYCODE_ENTER                    |   66   |
    | KEYCODE_DEL                      |   67   |
    | KEYCODE_GRAVE                    |   68   |
    | KEYCODE_MINUS                    |   69   |
    | KEYCODE_EQUALS                   |   70   |
    | KEYCODE_LEFT_BRACKET             |   71   |
    | KEYCODE_RIGHT_BRACKET            |   72   |
    | KEYCODE_BACKSLASH                |   73   |
    | KEYCODE_SEMICOLON                |   74   |
    | KEYCODE_APOSTROPHE               |   75   |
    | KEYCODE_SLASH                    |   76   |
    | KEYCODE_AT                       |   77   |
    | KEYCODE_NUM                      |   78   |
    | KEYCODE_HEADSETHOOK              |   79   |
    | KEYCODE_FOCUS                    |   80   |
    | KEYCODE_PLUS                     |   81   |
    | KEYCODE_MENU                     |   82   |
    | KEYCODE_NOTIFICATION             |   83   |
    | KEYCODE_SEARCH                   |   84   |
    | TAG_LAST_KEYCODE                 |   85   |

## Gửi vị trí chạm màn hình

```bash
adb shell input tap X Y
```

- `X`: tọa độ của con trỏ trên trục hoành
- `Y`: tọa độ của con trỏ trên trục tung

## Capture Screen

- Chụp màn hình bằng lệnh:
    ```bash
    adb shell screencap -p /sdcard/screen.png
    ```
- Sau đó tải về với:
    ```bash
    adb pull /sdcard/screen.png
    ```
- Trong đó:
    - `-h`: this message
    - `-p`: lưu tệp dưới dạng `png`
    - `-d`: Chỉ định ID hiển thị vật lý để chụp (default: 129)


## Open App

### Default apps

Là những ___native application___ có sẵn trên thiết bị và hầu như sẽ giống nhau ở mọi thiết bị Android. Trường hợp thiết bị tùy biến sẽ không còn những tính năng này nữa.

```bash
adb shell am start -n package_name/app_name
```

| Tên ứng dụng | package_name/app_name                                |
| :----------- | :--------------------------------------------------- |
| __Settings__ | `com.android.settings/com.android.settings.Settings` |
| Camera       |                                                      |
| __Chrome__   |                                                      |

### 3Party Apps

Đầu tiên dùng lệnh này để hiển thị tất cả 3-party application.

```bash
adb shell pm list packages -3
```

Sau đó có thể sao chép tất cả ra ngoài để xoá bằng lệnh:

```bash
adb uninstall <package_name>
```

Hoặc 

```bash
This command with --user 0 <package_name>
```

## Thêm quyền cho ứng dụng trong khi chạy

Ứng dụng bạn chạy cần một số quyền để sử dụng chức năng hệ thống như truy cập vào tệp, sử dụng danh bạ, phone, truy cập mic, camera, ... thì có thể dùng các lệnh sau để cài đặt quyền động thay cho việc khai báo trực tiếp trong ___Android Manifest___.

Công thức:
```bash
adb shell pm grant your.package.name <permission_name>
```

Ví dụ:
```bash
adb shell pm grant your.package.name android.permission.READ_EXTERNAL_STORAGE
adb shell pm grant your.package.name android.permission.WRITE_EXTERNAL_STORAGE
adb shell pm grant your.package.name android.permission.CAMERA
adb shell pm grant your.package.name android.permission.ACCESS_FINE_LOCATION
adb shell pm grant your.package.name android.permission.RECORD_AUDIO
adb shell pm grant your.package.name android.permission.READ_CONTACTS
adb shell pm grant your.package.name android.permission.WRITE_CONTACTS
adb shell pm grant your.package.name android.permission.INTERNET
```

## Xóa các ứng dụng 3-party

- Dùng lệnh:
    ```bash
    for i in $(pm list packagess -3); do pm uninstall ${i:8}; done;
    ```
- Trong đó thì:
    - `pm list packages -3` là lệnh hiển thị danh sách toàn bộ ứng dụng từ bên thứ ba.
    - `pm uninstall` dùng để xóa ứng dụng.