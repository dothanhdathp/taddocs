# Template Make

## Kiến trúc Makefile

Viết `Makefile` chỉ đơn giản có hai thành phần là __Variables__ và __Targets__.

### Variables


Hương vị và sửa đổi Có hai hương vị của các biến:

recursive (use =) - Chỉ tìm kiếm các biến khi lệnh được sử dụng, không phải khi nó được xác định.
simply expanded (use :=) - Giống như lập trình bắt buộc bình thường - chỉ những người được xác định cho đến nay mới được mở rộng


### Targets

