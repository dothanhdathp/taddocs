# Một số lệnh thường dùng

## Tìm tệp

Lệnh này được sử dụng để tìm kiếm tệp/thư mục bằng tên:

```bash
dir /s /b [filename/foldername]
```
Trong đó:

- `\s` : Tìm cả trong các thư mục con, nếu không dùng cờ này thì chỉ tìm trong thư mục mặc định.
- `\b` : Để hiển thị đường dẫn thôi, tránh kết quả dài dòng.

### Ví dụ 1: Tìm tệp với tên

Mình có viết một ứng dụng nhỏ đại loại như ___Giải Sudoku___ gì đó mà mình không nhớ rõ tên. Nhưng mình nhớ tệp `main.cpp` thường dùng để viết chương trình cho __C++__ nên sẽ tìm thử với nó trong ổ cứng `D:`.

- Vào ổ `D:` và mở `comman-prompt` hoặc gõ `D:` để chuyển sang ổ `D:`. Nếu tiền tố trong ___cmd___ có giá trị là `D:\>` là được:

```batch
dir /s /b main.cpp
```

Kết quả trả về:

```txt
D:\code\cpp\main.cpp
D:\EVO\Car\procfs-inspector\server\main.cpp
D:\EVO\Car\tests\PowerTestService\src\main.cpp
D:\Github\SolveSudoku\main.cpp
```

Được rồi đã tìm được tệp ___D:\Github\SolveSudoku\main.cpp___.

### Ví dụ 2: Tìm tệp không rõ

Trong trường hợp chỉ nhớ có chữ __Sudoku__ có thể dùng như này:

```batch
dir /s /b *Sudoku
```

_Dấu `*` được dùng để thay thế cho <u>bất kỳ ký tự gì</u>. Đây là kiểu tìm kiếm RegEx. Dịch theo nghĩa câu lệnh trên nghĩa là: "Tìm tất cả tệp hoặc thư mục trong tên có chứa chữ Sodoku ở cuối."_

```txt
D:\Doc\tadzeila-document\site\Developer\cpp\cpp-project-solver-sudoku
D:\Github\SolveSudoku
```

Các tệp `D:\Doc\tadzeila-document\site\Developer\cpp\cpp-project-solver-sudoku` và `D:\Github\SolveSudoku` đều phù hợp với kết quả tìm kiếm.

!!! note "Thêm"
    Trong lệnh `dir` này hoàn toàn không có phân biệt đâu là tệp đâu là thư mục cho nên có thể tìm tùy ý. Nhưng kết quả trả ra nên kiểm nghiệm thử.

## 