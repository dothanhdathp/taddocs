# Project

## Mục lục

- [electrone-docs-app](#electrone-docs-app)

## electrone-docs-app

### Mô tả

Dự án này để quản lý các ___"dự án mkdocs"___ của mình, tổng hợp chúng lại một chỗ và có thể điều hướng sang nhiều thành phần khác nhau.

Dự án này được để ở đây: [electrone-docs-app](https://github.com/dothanhdathp/electrone-docs-app)

Trong dự án này có phần chú trọng là tệp `config.json` cần được để bên cạnh ứng dụng để tải ra các thông tin cần thiết. Vì để tránh phiền phức nên mình đã không đưa đường dẫn vào trong code mẫu dự án.

### Cài đặt

=== "Nhà"
    _Sau chép vào đây sau._

    ```json
    {
        "docsServer": "https://dothanhdathp.github.io/taddocs/",
        "booksServer": "https://dothanhdathp.github.io/tadbooks/",
        "diaryServer": "https://dothanhdathp.github.io/taddiary/",
        "docsPath": "D:\\Doc\\taddocs",
        "booksPath": "D:\\Doc\\tadbooks",
        "worksPath": "D:\\Doc\\tadworks",
        "diaryPath": "D:\\Doc\\taddiary",
        "docsPort": 8000,
        "booksPort": 8001,
        "worksPort": 8002,
        "diaryPort": 8003
    }
    ```

=== "Công ty"
    ```json
    {
        "docsServer": "https://dothanhdathp.github.io/taddocs/",
        "booksServer": "https://dothanhdathp.github.io/tadbooks/",
        "diaryServer": "https://dothanhdathp.github.io/taddiary/",
        "docsPath": "D:\\Doc\\taddocs",
        "booksPath": "D:\\Doc\\tadbooks",
        "worksPath": "D:\\Doc\\tadworks",
        "diaryPath": "D:\\Doc\\taddiary",
        "docsPort": 8000,
        "booksPort": 8001,
        "worksPort": 8002,
        "diaryPort": 8003
    }
    ```

### To do

- [ ] Cần một trang dùng riêng để cấu hình. Trong đó nó sẽ dùng để khởi động, gán port, cấu hình động cho `mkdocs serve` thay cho việc cấu hình tĩnh bằng tệp `json` thế này.
- [ ] Trong tệp cấu hình đó hàm `async` sẽ có đất diễn, nó sẽ có thể kiểm tra xem port hoặc cấu hình cho `localhost` có khởi động thành công hay không và trả về kết quả.
- [ ] Làm thêm nút chuột phải vào đường dẫn thì có lựa chọn:
    1. ___Copy Link___
    1. ___Open Link in WebBrower___