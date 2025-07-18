# Mkdocs Theme

## Theme \[material\]

Đây là một trong những _theme_ mặc định và dễ sử dụng, có khá nhiều công cụ cần thiết để viết sẵn luôn mà bạn không cần đến phải tải thêm các bộ công cụ khác.

### Tải về \[material\]

Đầu tiên là tải về gói cài đăt cho _theme_

```bash
pip install mkdocs-material
```

### Chọn theme \[material\]

Khai báo đoạn như sau trong tệp `mkdocs.yml`

```bash
site_name: Tad
theme:
  name: material
```

### Dark Mode/Light Mode

Để bật `Dark Mode/Light Mode` trong _theme_ này, khai báo đoạn sau:

```bash
site_name: Tad
theme:
  name: material
  palette:
  - scheme: default
    primary: indigo
    accent: pink
    toggle:
      icon: material/brightness-4
      name: Switch to dark mode
  - scheme: slate
    primary: indigo
    accent: pink
    toggle:
      icon: material/brightness-7
      name: Switch to light mode
```

### Feature

Có một số tính năng khá là quan trọng như `content.code.copy` dùng để sao chép văn bản nằm trong thư mục code, cực kỳ tiện. Khai báo chúng trong tệp `yml` với nội dung như dưới này ___(chú ý thứ tự `theme/name/features`)___

```bash
theme:
  name: material
  features:
    - content.code.copy
```

Ngoài ra còn một số chức năng khác sẽ được trình bày trong bảng:

<div class="center-table" markdown>

| Features                  | Tác dụng                       |
| :------------------------ | :----------------------------- |
| `navigation.tabs`         | _chưa rõ_                      |
| `navigation.sections`     | _chưa rõ_                      |
| `toc.integrate`           | _chưa rõ_                      |
| `navigation.top`          | _chưa rõ_                      |
| `search.suggest`          | _chưa rõ_                      |
| `search.highlight`        | _chưa rõ_                      |
| `content.tabs.link`       | _chưa rõ_                      |
| `content.code.annotation` | _chưa rõ_                      |
| `content.code.copy`       | Tạo button COPY cho thẻ `code` |

</div>