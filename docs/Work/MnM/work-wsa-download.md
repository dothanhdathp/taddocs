# WSA Download

## Thiết lập môi trường

- __Ubuntu 16.04 (LTS)__: Nhiều chương trình cũ chỉ tương thích với hệ điều hành phiên bản này, nâng cấp lên thường là lỗi dựng và cần rất nhiều công sức để sửa chữa.
- __Tải về các gói phụ thuộc__:

```bash
sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat cpio python python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev pylint3 xterm qt4-dev-tools
sudo apt-get install make xsltproc docbook-utils fop dblatex xmlto
sudo apt-get install make perl gawk build-essential libncurses5-dev texinfo bison flex autoconf
sudo apt-get install ia32-libs gcc-multilib lib32z1 lib32ncurses5-dev
sudo apt-get install qtscript-tools
```

Cài đặt môi trường mặc định là `bash`.

```bash
sudo dpkg-reconfigure dash
```
__Chọn__ `NO`

## Thiết lập repo

### repo init

Khởi tạo dự án với 
```bash
repo init -u ssh://git-proxy/git/HA/product/hu/linux/manifest.git -b p_WSA-L3000M-S-r0.1_Nissan_main
```

### repo sync

#### Cách 1

Sử dụng `sync` để kéo dự án về.

```bash
repo sync
```

#### Cách 2

Nếu dự án kéo chậm có thể tách thành 2 bước:

Kéo về các thay đổi thiết lập các thư mục, tầng `.git` từ các nguồn. Bước này sẽ tốn tài nguyên mạng, nên để `-j 8` thôi.

```bash
repo sync -j 8 --network-only
```

Sau đó là dùng lệnh này để bắt đầu kéo các tệp, bước này sẽ tốn hiệu năng của máy chủ nên có thể đẩy nhiều tiến trình hơn bình thường một chút.

```bash
repo sync -j 64 --local-only
```
