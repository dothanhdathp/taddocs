# Git Start

Các bước cơ bản để bắt đầu __Git__.

## Clone

Ở bước đầu tiên này cần có một dự án. Hãy lấy cái này làm ví dụ [git-example]. Sử dụng lệnh `git clone` để kéo dự án về:

```bash
git clone git@github.com:dothanhdathp/git-example.git
```

## Make the change

Ok trong dự án này thường sẽ có cấu trúc như này:

```txt
.
├── main.cpp
├── Makefile
└── README.md

1 directory, 4 files
```

Hãy làm một số thay đổi nhỏ:

- Thêm tệp `main.h` vào trong thư mục, nội dung như sau:
    ```cpp title="main.h"
    #include <iostream>

    void say_hello() {
        std::cout << "Hello World!" << std::endl;
    }
    ```
- Sau đó là chỉnh sửa chút ở tệp `main.cpp`. Bỏ `<iostream>` thay bằng `"main.h"`
    ```cpp
    #include "main.h"

    int main(int argc, char *argv[]) {
        say_hello();
        return 0;
    }
    ```
- Tiếp theo là thêm một vài dòng mô tả gì đó và tệp `README.md`
    ```markdown
    # This is example project

    - Add first commit!
    ```

## Diff

Ok đã có một vài sự thay đổi, dùng lệnh `git status` để xem có ___những tệp nào thay đổi___:

Kết quả:

```txt
On branch main
Your branch is up to date with 'origin/main'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md
        modified:   main.cpp

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        main.h

no changes added to commit (use "git add" and/or "git commit -a")
```

Sau đó xem __sự thay đổi của các tệp__ bằng lệnh `git diff`:

Kết quả có được như này:

```patch
diff --git a/README.md b/README.md
index e732800..ca006b4 100644
--- a/README.md
+++ b/README.md
@@ -1,2 +1,3 @@
 # This is example project

+- Add first commit!
\ No newline at end of file
diff --git a/main.cpp b/main.cpp
index 5c38966..cd2b7b8 100644
--- a/main.cpp
+++ b/main.cpp
@@ -1,4 +1,4 @@
-#include <iostream>
+#include "main.h"

 int main(int argc, char *argv[]) {
     say_hello();
```

!!! note "Note"
    Có thể dễ thấy nó chỉ lưu lại thay đổi của các tệp _có sẵn_, còn các tệp _chưa có sẵn_ thì sẽ không được _tracking_ trong lịch sử.

## Add

Chạy lệnh này để xác nhận các sự thay đổi:

```bash
git add .
```

Chạy lại lệnh `git status`, kết quả sẽ thế này:

```txt
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   README.md
        modified:   main.cpp
        new file:   main.h
```

## Commit

Ok bây giờ đã có đủ các thay đổi và xác nhận thì chạy lệnh này để xác nhận các commit:

```bash
git commit -m "This is my first commit"
```

Lúc này có thể tiếp tục chạy lệnh `git status` để xem xác nhận của hệ thống ___git___:

```txt
On branch main
Your branch is ahead of 'origin/main' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean
```

Dễ nhận thấy đã có __1 commit__ đã được đưa lên hệ thống qua dòng _Your branch is ahead of 'origin/main' by 1 commit._.

## Push

Trước khi đẩy _commit_ lên hệ thống có thể xem lại những gì sẽ được đẩy lên theo 1 trong hai cách:

- `git log -1`: Xem lại _commit_ sẽ được đẩy lên dưới dạng đơn giản.
    ```txt
    commit d9b7d36026a5f56b58f7fa8f3b390706ce758b5d (HEAD -> main)
    Author: tad <dtdat@humaxdigital.com>
    Date:   Mon Aug 4 17:58:49 2025 +0700

        This is my first commit

    ```
- `git show -1`: Xem lại _chi tiết những thay đổi_
    ```txt
    commit d9b7d36026a5f56b58f7fa8f3b390706ce758b5d (HEAD -> main)
    Author: tad <dtdat@humaxdigital.com>
    Date:   Mon Aug 4 17:58:49 2025 +0700

        This is my first commit

    diff --git a/README.md b/README.md
    index e732800..ca006b4 100644
    --- a/README.md
    +++ b/README.md
    @@ -1,2 +1,3 @@
    # This is example project

    +- Add first commit!
    \ No newline at end of file
    diff --git a/main.cpp b/main.cpp
    index 5c38966..cd2b7b8 100644
    --- a/main.cpp
    +++ b/main.cpp
    @@ -1,4 +1,4 @@
    -#include <iostream>
    +#include "main.h"

    int main(int argc, char *argv[]) {
        say_hello();
    diff --git a/main.h b/main.h
    new file mode 100644
    index 0000000..b98e254
    --- /dev/null
    +++ b/main.h
    @@ -0,0 +1,5 @@
    +#include <iostream>
    +
    +void say_hello() {
    +    std::cout << "Hello World!" << std::endl;
    +}
    \ No newline at end of file
    ```

!!! warning "Warning"
    Thông thường bước đó là dùng để _kiểm tra lại_, về cơ bản là có thể bỏ qua nhưng thật sự không nên. Hãy tập thói quen ngồi review lại tất cả nhưng gì ___sắp/sẽ___ được đẩy lên trên hệ thống.

Cuối cùng chạy lệnh này để đẩy _commit_ lên:

```bash
git push
```

## Log

Để xác nhận thay đổi có được xác nhận hay không thì dùng `git pull` và `git log`

```bash
git pull
git log
```

Nếu commit đã được đẩy lên thành công sẽ có thông tin trong lịch sử:

```txt
commit d9b7d36026a5f56b58f7fa8f3b390706ce758b5d (HEAD -> main)
Author: tad <dtdat@humaxdigital.com>
Date:   Mon Aug 4 17:58:49 2025 +0700

    This is my first commit

```


!!! success "Tổng hợp"
    Các bước để tạo một commit-git là:
    
    1. Tạo sự thay đổi
    1. Thêm sự thay đổi với `git add`
    1. Điền nội dung cam kết với `git commit`
    1. Đẩy sự thay đổi lên với `git push`

    Ngoải ra hãy cẩn trọng với các sự thay đổi bằng cách liên tục kiểm tra `git status`