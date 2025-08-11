# Tar

## Mô tả

`tar` là lệnh dùng để `nén`/`giải nén` ___(compress/uncompress)___ cơ bản trong __Linux__. Lệnh này rất cơ bản và được dùng thường xuyên, đặc biệt là đối với các hệ thống.

## Command

- `-c` ___(create)___: Tạo một kho lưu trữ mới.
- `-x` ___(extract)___: Trích xuất các tập tin từ một kho lưu trữ.
- `-t` ___(list)___: Liệt kê nội dung của một kho lưu trữ.
- `-f` ___(file)___: Chỉ định tên của tệp lưu trữ. Tùy chọn này hầu như luôn luôn được sử dụng.
- `-v` ___(verbose)___: Hiển thị thông tin chi tiết về các tập tin đang được xử lý.
- `-z` ___(gzip)___: Nén hoặc giải nén kho lưu trữ bằng GZIP.
- `-j` ___(bzip2)___: Nén hoặc giải nén kho lưu trữ bằng BZIP2.
- `-C` ___(directory)___: Thay đổi thư mục làm việc trước khi thực hiện thao tác, hữu ích để trích xuất hoặc lưu trữ các tệp cụ thể mà không cần cấu trúc đường dẫn đầy đủ của chúng.

## Compress

## Tar Ball

### Compress

```bash
tar -cf name.tar {file or path-to-directory}
```

- `-c`: Tạo tệp `tar`
- `-f`: Đặt tên theo tùy chọn sau cờ này.

### Uncompress

```bash
tar -xf filename.tar
```

- `-x`: Tùy chọn giải nén
- `-f`: Tệp `filename.tar` được đặt sau cờ này.

### Uncompress to Folder

```bash
tar -xf filename.tar -C {path-to-directory}
```

- `-x`: Tùy chọn giải nén
- `-f`: Tệp `filename.tar` được đặt sau cờ này.
- `-C`; Địa chỉ thư mục được giải nén được đưa vào sau cờ này.

### Show progress

Để hiện thị quá trình dùng cờ `-v`

```bash
tar -xvf filename.tar
```

## Type Compress/Uncompress

Có hai lựa chọn khác nhay để chọn loại giải thuật nén/giải nén là:

- `-z`: __GZIP__
- `-j`: __BZIP2__

Cách dùng rất đơn giản, sử dụng __một trong hai__ cờ trên để nén và `tar -xzf` để giải nén. ___(Lưu ý: cờ -f phải ở cuối cùng để nhận diện chuỗi ký tự tiếp theo là đầu vào.)___.

Mặc dù không hoàn toàn chính thống, nhưng thường các tệp được nén với ___gzip___ sẽ có đuôi là `.gz`, và các tệp có đuôi là `.bz2` thường được nén với ___bzip2___.

### Gz

```bash
tar -czf filename.tar {file or path-to-directory}
```
```bash
tar -xzf filename.tar
```

### Bz2

```bash
tar -cjf filename.tar {file or path-to-directory}
```
```bash
tar -xjf filename.tar
```