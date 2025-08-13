# Mkdocs Tad Style

!!! abstract "Abstract"
    - Phần này hướng dẫn để có thể clone phong cách viết tài liệu từ bên này sang bên khác.
    - Với dự án __Mkdocs__ gốc có lẽ chính là tệp này rồi.

## Chuẩn bị

[Tải về Python và cài đặt](../../Programming/Python/python.md)

Dùng các lệnh dưới này để cài đặt các gói cần thiết. Chọn một trong các kiểu sau cài đặt __*tùy loại hệ thống*__.

=== "pip"
    ```batch
    pip install --upgrade pip
    pip install mkdocs
    pip install pymdown-extensions
    pip install mkdocs-material
    pip install mkdocs_puml
    ```
=== "python -m pip"
    ```batch
    python -m pip install --upgrade pip
    python -m pip install mkdocs
    python -m pip install pymdown-extensions
    python -m pip install mkdocs-material
    python -m pip install mkdocs_puml
    ```
=== "%USERPROFILE%\\...\\python.exe"
    ```batch
    %USERPROFILE%\AppData\Local\Programs\Python\Python313\python.exe -m pip install --upgrade pip
    %USERPROFILE%\AppData\Local\Programs\Python\Python313\python.exe -m pip install mkdocs
    %USERPROFILE%\AppData\Local\Programs\Python\Python313\python.exe -m pip install pymdown-extensions
    %USERPROFILE%\AppData\Local\Programs\Python\Python313\python.exe -m pip install mkdocs-material
    %USERPROFILE%\AppData\Local\Programs\Python\Python313\python.exe -m pip install mkdocs_puml
    ```

## Khởi tạo Mkdocs

Khởi tạo một thư mục mới _định dạng_ của `mkdocs` bằng lệnh này:

```bash
mkdocs new .
```

## Clone Assets

Sao chép các thư mục `docs/assets` từ trong tệp `docs` từ một tệp nguồn khác vào trong tệp `docs` của dự án mới. Về mặc định bên trong thư mục `assets` sẽ có các tệp/thư mục như này:

```txt
.(./assets)
├── fonts
│   └── // list font files .ttf //
├── logo
│   └── cat_white.png
├── scripts
│   ├── katex.js
│   └── keyevent.js
└── stylesheets
    └── theme.css
```

## 