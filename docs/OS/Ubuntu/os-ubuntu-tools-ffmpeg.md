# FFmpeg

__FFmpeg__ là công cụ chơi nhạc, chuyển đổi, nén/giải nén các loại dữ liệu đa phương tiện. __FFmpeg__ được phát triển bởi bên thứ ba đồng thời là một `open-source`, khuyến khích mọi người tải về và sử dụng.

__FFmpeg__ cực kỳ mạnh mẽ, với việc có thể tích hợp và thao tác với __hầu hết mọi loại tệp đa phương tiện ở tốc độ tốt__ làm mình không biết phải nói gì với cái công cụ này - quá tuyệt vời. Đây là sản phẩm miễn phí tuyệt vời nhất, hỗ trợ một bộ các bộ giải mã cho các loại tệp tin __đa phương tiện__ từ xưa đến nay.

## Tải về

```bash
sudo apt update
sudo apt install ffmpeg
```

## Chơi nhạc

## Chuyển đổi

### Chuyển đổi dữ liệu pcm thành wav

```bash
ffmpeg -f s16le -ar 44.1k -ac 2 -i file.pcm file.wav
```
- `-f s16le`    : signed 16-bit little endian samples
- `-ar 44.1k`   : sample rate 44.1kHz
- `-ac 2`       : 2 channels (stereo)
- `-i file.pcm` : input file
- `file.wav`    : output file

### Chuyển đổi wav file thành raw data

```bash
ffmpeg -i input.flv -f s16le -acodec pcm_s16le output.raw
```

### Chuyển đổi định dạng theo đuôi

Chuyển đổi tệp tin từ loại này sang loại khác:
```bash
ffmpeg -i input.wav output.mp3
```
