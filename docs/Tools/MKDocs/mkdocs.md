# Bắt đầu với MkDocs

## MKDocs là gì?

MKDocs là một công cụ viết và tạo tài liệu vô cùng mạnh mẽ.

### Yêu cầu

- Yêu cầu có cài đặt Python, [xem hướng dẫn ở đây]().

### Tải về python

Python xem tải về và cài đặt ở đây: ___

### Tải về mkdocs

- Đầu tiên là hãy cập nhật python:

```bash
pip install --upgrade pip
```

- Sau đó dùng lệnh sau:

```bash
python get-pip.py
```

- Tải mkdocs

```bash
pip install mkdocs
```

- Kiểm tra lại phiên bản

```bash
mkdocs --version
```

## Bắt đầu với Mkdocs

- Đầu tiên bạn cần (nên) có một tài khoản Github để lưu trữ
- Tạo một nhánh bất kỳ để lưu trữ tài liệu
- Sau đó vào trong thư mục của git và bắt đầu với:

```bash
mkdocs new .
```

- Nếu thành công sẽ có kết quả như này

```bash
INFO    -  Writing config file: ./mkdocs.yml
INFO    -  Writing initial docs: ./docs/index.md
```

- Với các ví dụ sẵn có, có thể chạy lệnh sau để khởi động server

```bash
mkdocs serve
```

- Bật một __Web Brower__ bất kỳ với `localhost:8000`

```bash
http://localhost:8000/
```

Vậy là xong, sẽ có một trang web hiện lên và bạn đã có một trang web tài liệu cho riêng mình rồi đó.

## Tham khảo

- [Trang chủ Mkdocs](https://www.mkdocs.org)
- [Hướng dẫn cài đặt Mkdocs trên trang chủ](https://www.mkdocs.org/user-guide/installation/)