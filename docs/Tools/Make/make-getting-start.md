# Getting Start

Bắt đầu viết những dòng đầu tiên.

## Ví dụ

### Say Hello

> Mục đích của tệp này là tạo _command-line_ và in ra chữ __Hello World__ trên màn hình bằng lệnh `echo Hello World` trên ___bash___.

Bắt đầu một chút với trải nghiệm dựng _command-line_ của __Make__ như sau. Tạo __Makefile__ và _dùng_ nội dung như sau:

```makefile
hello:
	echo Hello World!
```

Sau đó chạy lệnh dưới đây:

```bash
make hello
```

Kết quả:

```txt
Hello World!
```
### Phân tích

Tệp này chỉ có hai thành phần, `hello:` là thẻ, sau dấu `:` là các _command-line_. Thế nên đơn giản `make hello` sẽ gọi sang ___các___ lệnh bên dưới thẻ `hello:`

!!! warning "Chú ý!"
    - Các lệnh đằng sau thẻ cần cách ra đầu dòng bằng ký tự __TAB__ (`	`). Phải là dấu __TAB__.
    - Nếu không phải dấu __TAB__ mà là tập các dấu _cách_ (trong VSCode có lựa chọn thay thế dấu __TAB__ bằng dấu cách).
    - Nếu không phải dấu __TAB__, thì sẽ có lỗi `Makefile:2: *** missing separator.  Stop.`. Đó là do bị dùng _dấu cách _, không phải dấu __TAB__.

## Hello World

Trong ví dụ này sẽ là thực tế khi dùng __Makefile__ tạo ra chương trình. Sử dụng ví dụ [Hello World của C++](../../Programming/cpp/cpp-0-helloworld.md). Chương trình dựng được bằng công cụ `g++` như sau:

```cpp title="main.cpp"
#include "stdio.h"

int main(int argc, char const *argv[])
{
    printf("Hello");
    return 0;
}
```
Sau đó tạo tệp __Makefile__ như sau:

```makefile title="Makefile"
CXX=g++

main:
    $(CXX) main.c -o main
```

Ok đến giờ thì tạo ra chương trình:

```bash
make main
```

Kết quả đơn giản sẽ có tệp `main` _(ở Linux)_, hoặc `main.exe` nếu là _Windows_.