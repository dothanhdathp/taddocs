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

## 