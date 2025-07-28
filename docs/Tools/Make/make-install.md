# Install

## Linux

Cài đặt __Make__ trên các hệ điều hành họ __Linux__ _(như Ubuntu, Debian, ...)_ thì đơn giản.

- Chạy lệnh sau để lấy gói cài đặt `make`:
    ```bash
    sudo apt-get install build-essential
    ```
- Sau khi cài xong thì dùng lệnh:
    ```bash
    which make
    ```
- Sẽ trả ra vị trí của công cụ `make` tại:
    ```bash
    /usr/bin/make
    ```

## Windows

### Câu chuyện lịch sử

__Windows__ lại không may mắn có được __Make__ nguyên bản _(native)_.

Điều này đầu tiên là do make vốn được thiết kết cho hệ điều hành __Linux__ dưới giấy phép mã nguồn mở __GNU__. Sau này vì tính tiện dụng dễ dùng của nó mà `make` trở nên phổ biến.

Một lý do khác chết chóc hơn là các công cụ xây dựng chương trình dành cho __Windows__ đều tệ và khó tiếp cận. Điều này càng ngày càng khiến chương trình cho hệ điều hành Windows bị _tụt hậu_ xa so với hệ điều hành __Linux__. Điều đó thúc đẩy __Windows__ bắt buộc phải tìm cách đưa __Make__ lên trên hệ điều hành này để tối ưu hoá tính năng, thu hút lập trình viên phát triển các chương trình, tính năng cho Windows cũng như sử dụng kho dữ liệu mã nguồn mở khổng lồ trong thời kỳ bùng nổ của lập trình.

Và một trong những công cụ được phổ biến nhất chính là [MSYS2](../msys2/software-msys2-overview.md), một hệ thống cho phép sử dụng môi trường giả lập như Linux trên Windows, biến đường dẫn, liên kết, ... cho phép sử dụng __Make__ trên Windows và cũng như tái sử dụng lại mã lập trình cũ, ___Makefile___, ... lôi kéo lại các lập trình viên

!!! info "Info"
    Về việc tải và cài đặt `msys2` xem tại [MSYS2](../msys2/software-msys2-overview.md) 

### Tải về Make cho MSYS2

- Tải về `make` trên __MSYS2__
    ```makefile
    pacman -S make
    ```
- _Hoặc:_
    ```makefile
    pacman -S mingw-w64-x86_64-make
    ```
- Kiểm tra phiên bản:
    ```bash
    make --version
    ```