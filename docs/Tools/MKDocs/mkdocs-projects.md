# Mkdocs Project

Ứng dụng `mkdocs` này cho đến hiện tại mình đã dựng khoảng 5 dự án

## Ứng dụng

Ứng dụng dùng để tương tác với các tài liệu của mình hiện tại mới chỉ có phát hành cho __Windows__

### Windows

Mình tạo ra ứng dụng này bằng __Electron__, vì nó vốn không có nhiều tính năng, chủ yếu chỉ cần nó tải được trang __web__ lên thông qua nhân của __Chromnium__ là được. Đường link hiện tại cho dự án này ở đây

- [https://github.com/dothanhdathp/electrone-docs-app](https://github.com/dothanhdathp/electrone-docs-app)

*Sau này mình nên đổi tên dự án đi!*

Sau khi tải về source-code thì có thể dùng lệnh sau để dựng:

```bash
npm install electron --save-dev
npm run dist
```

!!! abstract "Note"
    - Yêu cầu cần có máy ảo Java
    - Yêu cầu cần có thêm __Electron__

Sau khi tải xong thì sao chép tệp `config.json` để vào bên cạnh ứng dụng khởi chạy. Thông tin sẽ được tải ra từ đó.

## taddocs

`taddocs` là trang lưu trữ tài liệu về phần mềm. Lúc đầu mong muốn lưu trữ nhiều tài liệu khác nhau nhưng quá dài, và các thành phần cũng nhiều nên mình đã tách nó ra.

Đường dẫn đến __*source-code*__ dự án: [https://github.com/dothanhdathp/taddocs](https://github.com/dothanhdathp/taddocs)

## tadbooks

`tadbooks` chứa thông tin liên quan đến kho sách của mình. Trong đó chứa sách, thông tin các quyển sách, một vài bản thảo tự viết, hoặc các bài viết liên quan đến nhiều lĩnh vực khác nhau.

Khác với `taddocs`, đây không phải là những tài liệu do mình viết nên cần tôn trọng bản quyền tác giả.

Đường dẫn đến __*source-code*__ dự án: [https://github.com/dothanhdathp/taddocs](https://github.com/dothanhdathp/tadbooks)

## tadstudy

`tadstudy` là thuần túy học tập. Chứa các chương ngắn gọn mô tả về các kiến thức nền tảng về các môn cơ bản như toán, lý, hóa, sinh, ...

Đường dẫn đến __*source-code*__ dự án: [https://github.com/dothanhdathp/taddocs](https://github.com/dothanhdathp/tadstudy)

## taddiary

`taddiary` là phần mình lưu trữ ký ức, lịch sử. Như tên gọi nó là nhật ký cá nhân, không có gì quá thể để bảo mật cả. Đồng thời nó cũng kiêm luôn nhiệm vụ lưu trữ về cuộc sống như là về món ăn, du lịch, xe, nhà cửa, ...

Đường dẫn đến __*source-code*__ dự án: [https://github.com/dothanhdathp/taddocs](https://github.com/dothanhdathp/taddiary)

## tadworks

`tadworks` lưu lại các tài liệu hoặc quá trình làm việc. Dự án này khá là nhẹ nhưng nhiều tài liệu quan trọng nên bảo mật thế nên nó không được tạo đường dẫn __*public*__ ra ngoài.

Đường dẫn đến __*source-code*__ dự án: [https://github.com/dothanhdathp/taddocs](https://github.com/dothanhdathp/tadworks)