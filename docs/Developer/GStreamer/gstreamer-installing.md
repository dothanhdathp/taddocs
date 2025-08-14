# Installing GStreamer

Trang tải về ở đây:

- [https://gstreamer.freedesktop.org/documentation/installing/index.html](https://gstreamer.freedesktop.org/documentation/installing/index.html)
- Vì thời gian không cho phép nên một số đầu mục mình sẽ để lại, tập trung chủ yếu vào __*Android*__ và __*Linux*__ thôi.

## Hệ điều hành

## Windows

## Linux

!!! abstract "Abstract"
    __GStreamer__ được tích hợp sẵn trong tất cả các bản phân phối Linux. Chúng tôi khuyên bạn nên sử dụng phiên bản mới nhất của một bản phân phối có tốc độ phát triển nhanh như __Fedora__, __Ubuntu__ _(không phải LTS)_, __Debian__ sid hoặc __OpenSuse__ để nhận bản phát hành __GStreamer__ mới nhất.

### Cài đặt GStreamer trên Fedora

Chạy lệnh sau:

```bash
dnf install gstreamer1-devel gstreamer1-plugins-base-tools gstreamer1-doc gstreamer1-plugins-base-devel gstreamer1-plugins-good gstreamer1-plugins-good-extras gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-bad-free-devel gstreamer1-plugins-bad-free-extras
```

### Cài đặt GStreamer trên Ubuntu hoặc Debian

```bash
apt-get install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-bad1.0-dev gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio
```

## Mac OS X

## Gói phát triển

### Android

### iOS