# Mkdoc css

## Thêm tệp css

Vấn đề đầu tiên mình gặp phải đấy là khung chính nơi hiển thị nội dung quá bé! Cái đó làm mình khó chịu thế nên mình đã phải tìm hiểu làm sao để có thể tăng kích thước đó lên và mình được hướng dẫn là thêm tệp `css`

Để thêm tệp css thì ta cần có tệp css, tạo tệp css trong đường dẫn sau:

```bash
├── docs
│   └── stylesheets
│       └── theme.css
└── mkdocs.yml
```

Sau đó khai báo đoạn sau vào tệp `mkdocs.yml`:

```bash
extra_css:
  - stylesheets/theme.css
```

Thế là xong rồi

## Chỉnh kích thước khung

Áp dụng chỉnh sửa này sẽ giúp cho bề rộng phần nội dung trở nên lớn hơn.

```bash
.md-grid {
  max-width: initial; /* or try 100% or 1280px */
}
```