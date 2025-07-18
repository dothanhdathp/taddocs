# Một vài Markdown Extension cho MKDocs

## Collapsible

Thêm đoạn này vào tệp `mkdocs.yml`

```yml
  - admonition
  - pymdownx.details
```

Trong tệp markdown sử dụng như này:

```bash
??? note "Expand"
    Nội dung trong phần mở rộng
```

Kết quả sẽ được như này:

??? note "Expand"
    Nội dung trong phần mở rộng

Sẽ thấy nhiều dạng ___icon___ được sử dụng, có thể thay đổi biểu tượng thành các dạng khác bằng các ký tự khác như bảng sau:

| Symbol     | Effect                                    |
| :--------- | :---------------------------------------- |
| `note`     | Default style, neutral tone               |
| `abstract` | Similar to note, often used for summaries |
| `info`     | Blue tone, for informational content      |
| `tip`      | Green tone, for helpful advice            |
| `success`  | Bright green, for positive outcomes       |
| `question` | Teal tone, for FAQs or inquiries          |
| `warning`  | Yellow tone, for cautionary notes         |
| `failure`  | Red tone, for failed outcomes             |
| `danger`   | Strong red, for critical alerts           |
| `bug`      | Red tone, often used for known issues     |
| `example`  | Gray tone, for code or usage examples     |
| `quote`    | Stylized for quotations                   |


## Code tab layout

Mở hai extension này lên trong tệp `.yml`.

```yml
markdown_extensions:
  - pymdownx.superfences
  - pymdownx.tabbed:
      alternate_style: true
```

Sau đó sử dụng trong __Markdown__ như này:

```txt
=== "Java"
    ```java
    public class HelloWorld {
        public static void main(String[] args) {
            System.out.println("Hello from Java!");
        }
    }
    ```
=== "Python"
    ```python
    def main():
        print("Hello from Python!")

    main()
    ```
```

=== "Java"
    ```java
    public class HelloWorld {
        public static void main(String[] args) {
            System.out.println("Hello from Java!");
        }
    }
    ```
=== "Python"
    ```python
    def main():
        print("Hello from Python!")

    main()
    ```

Hướng dẫn gốc có thể [xem tại link](https://squidfunk.github.io/mkdocs-material/reference/content-tabs/#grouping-code-blocks-c_1).

!!! warning "Note"
    Nhớ là phần tab bên trong phải có 4 dấu cách.