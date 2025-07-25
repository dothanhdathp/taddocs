# Extensions

## Overview

Các _extension_ chính là những công cụ hỗ trợ ngoài mạnh mẽ nhất khiến __VSCode__ cực kỳ đáng sử dụng ngoài việc nó có giao diện trực quan và dễ tiếp cậ_extension_. 

## Tải trong VSCode

- Để cài đặt _extension_ trong VSCode thì bấm vào tab này trên thanh `toolbar`
- Hoặc dùng tổ hợp phím `Ctrl+Shift+X`
- Chọn và tìm kiếm các _extension_ cần thiết, tải về.

## Tải qua command

Có một cách khác là dùng công cụ của __VSCode__. Vào đường dẫn sau:

```txt
%USERPROFILE%\AppData\Local\Programs\Microsoft VS Code\bin
```

Trong thư mục đó có công cụ `code.cmd`, có thể dùng để cài đặt extension cho __VSCode__. Có hai lệnh đáng nhớ như sau:

1. Danh sách các _extension_ đã được cài đặt:
    ```txt
    code.cmd --list-extensions
    ```
1. Cài đặt _extension_:
    ```txt
    code.cmd --install-extension <name>
    ```

## Một số Extension

### Extension chung

Có một số _extension_ cần thiết để cài đặt như sau:

- [Google Translate](vscode:extension/benshabatnoam.google-translate-ext): Dùng để cài dịch văn bản ngay trong _editor_
- [Copy filename](vscode:extension/jack89ita.copy-filename): Dùng để sao chép tên tệp
- [Markdown Table](vscode:extension/takumii.markdowntable): Dùng để tự động căn chỉnh bảng trong _markdown_
- [Sort Lines](vscode:extension/tyriar.sort-lines): Dùng để sắp xếp các dòng theo thứ tự trong _editor_

Còn đây là dùng _cmd_:

```txt
code.cmd --install-extension benshabatnoam.google-translate-ext
code.cmd --install-extension jack89ita.copy-filename
code.cmd --install-extension takumii.markdowntable
code.cmd --install-extension tyriar.sort-lines
```

### Extension riêng

Ngoài phần chung ra các phần dưới này là các _extension_ riêng biệt hỗ trợ riêng cho các ngôn ngữ lập trình riêng.

=== "C++"
    ```txt
    code.cmd --install-extension ms-vscode.cmake-tools
    code.cmd --install-extension ms-vscode.cpptools
    code.cmd --install-extension ms-vscode.cpptools-extension-pack
    code.cmd --install-extension ms-vscode.cpptools-themes
    ```
=== "Python"
    ```txt
    code.cmd --install-extension ms-python.python
    code.cmd --install-extension ms-python.vscode-pylance
    code.cmd --install-extension ms-python.debugpy
    ```
=== "Rust"
    ```txt
    code.cmd --install-extension rush-lang.rush
    code.cmd --install-extension rust-lang.rust-analyzer
    ```
=== "Markdown"
    ```txt
    code.cmd --install-extension marp-team.marp-vscode
    code.cmd --install-extension lzm0x219.vscode-markdown-github
    code.cmd --install-extension wibblemonkey.markdown-auto-toc
    code.cmd --install-extension bierner.markdown-mermaid
    code.cmd --install-extension yzane.markdown-pdf
    code.cmd --install-extension myml.vscode-markdown-plantuml-preview
    code.cmd --install-extension behnam.md-checkbox
    ```
=== "Support"
    ```txt
    code.cmd --install-extension ericgomez.breakpoint-highlight
    code.cmd --install-extension alefragnani.Bookmarks
    ```