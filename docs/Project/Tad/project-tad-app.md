# Tad

## Mô tả

Dự án này mình dự định sẽ bao gồm nhiều các dự án con cái mà sẽ được liên kết và `mirgarate` đến các trang tài liệu của mình. Và mở đầu là dành cho __Windows__

## Nguồn

Tải về source code:

```bash
git clone git@github.com:dothanhdathp/electrone-docs-app.git
```

!!! warning "Warning"
    Tương lai rất có thể mình sẽ thay đổi cái tên của dự án này.

## Tad.exe

Đầu tiên thì đây là một ứng dụng được viết bằng [Electron](../../Tools/Electron/electron-getting-start.md) với `npm`.

Để dựng ứng dụng thì dùng lệnh này:

```txt
npm install electron --save-dev
npm run dist
```

- Sau đó sẽ có tệp __tad Setup 1.0.0.exe__ nằm trong thư mục __dist__. Dùng nó để cài ứng dụng.
- Trường hợp ứng dụng đã có rồi thì nên gỡ nó ra và cài lại.

## Tệp config

Ứng dụng sẽ tải lên các cấu hình diều chỉnh bằng tệp `config.json`. Tệp này sẽ không được xuất bản cùng ứng dụng mà yêu cầu tự tạo. Đến hiện tại nội dung như này:

=== "Nhà"
    _Sau chép vào đây sau._

    ```json
    {
    "docsServer": "https://dothanhdathp.github.io/taddocs/",
    "booksServer": "https://dothanhdathp.github.io/tadbooks/",
    "diaryServer": "https://dothanhdathp.github.io/taddiary/",
    "studyServer": "https://dothanhdathp.github.io/taddiary/",
    "docsPath": "D:\\Git\\taddocs",
    "booksPath": "D:\\Git\\tadbooks",
    "worksPath": "D:\\Git\\tadworks",
    "diaryPath": "D:\\Git\\taddiary",
    "studyPath": "D:\\Git\\tadstudy",
    "docsPort": 8000,
    "booksPort": 8001,
    "worksPort": 8002,
    "diaryPort": 8003,
    "studyPort": 8004
    }
    ```

=== "Công ty"

    ```json
    {
    "docsServer": "https://dothanhdathp.github.io/taddocs/",
    "booksServer": "https://dothanhdathp.github.io/tadbooks/",
    "diaryServer": "https://dothanhdathp.github.io/taddiary/",
    "studyServer": "https://dothanhdathp.github.io/taddiary/",
    "docsPath": "D:\\Doc\\taddocs",
    "booksPath": "D:\\Doc\\tadbooks",
    "worksPath": "D:\\Doc\\tadworks",
    "diaryPath": "D:\\Doc\\taddiary",
    "studyPath": "D:\\Doc\\tadstudy",
    "docsPort": 8000,
    "booksPort": 8001,
    "worksPort": 8002,
    "diaryPort": 8003,
    "studyPort": 8004
    }
    ```


### To do

- [ ] Cần một trang dùng riêng để cấu hình. Trong đó nó sẽ dùng để khởi động, gán port, cấu hình động cho `mkdocs serve` thay cho việc cấu hình tĩnh bằng tệp `json` thế này.
- [ ] Trong tệp cấu hình đó hàm `async` sẽ có đất diễn, nó sẽ có thể kiểm tra xem port hoặc cấu hình cho `localhost` có khởi động thành công hay không và trả về kết quả.
- [ ] Làm thêm nút chuột phải vào đường dẫn thì có lựa chọn:
    1. ___Copy Link___
    1. ___Open Link in WebBrower___
- Trong tương lai có thể thay đổi tệp config.json để nó sẽ _tải động_ được lên các tệp tài liệu chứ không cần thiết phải sửa code nhiều như này nữa. Dù sao `json` có nhiều tầng mà.