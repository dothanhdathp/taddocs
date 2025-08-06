# Git Config

## Tổng quan

Lệnh này sẽ cài đặt cấu hình cho `git` như `name` và `mail`. Trong đó có hai giá trị __bắt buộc phải cài đặt__ để có thể đẩy lên sự  thay đổi. Đầu tiên có thể xem các cài đặt đã có với lệnh sau:

```bash
git config --list
```

## Kho lưu trữ

Git tồn tại 5 loại kho lưu trữ là:

- `--local`    : __(Mặc định)__, chỉ trên thiết bị
- `--system`   : _Chưa rõ ý nghĩa_
- `--global`   : Toàn bộ thiết bị, áp dụng với toàn bộ kho lưu trữ được tải về
- `--worktree` : _Chưa rõ ý nghĩa_
- `--file`     : Load cấu hình từ tệp

Về cơ bản, git config gần giống như là tệp cấu hình và nhiều loại ứng với nhiều khu vực làm việc khác nhau thôi. Nhưng nếu không có yêu cầu cấu hình gì thì nó sẽ tải tệp từ khu vực `local`.

Thế nên thông thường sẽ dùng `--global` cho máy cá nhân. Với cài đặt đó, nếu git không có sự thay đổi về `--local` thì tại mọi nơi được đẩy lên sẽ có cấu hình của `--global`.

## Cài đặt tiêu chuẩn

Ở phía mình mặc định sẽ cài đặt như này:

```bash
git config --global user.name "tad zeila"
git config --global user.email=example@gmail.com
git config --global code.filemode "false"
git config --global core.editor "'C:\Program Files\Notepad++\notepad++.exe' -multiInst -notabbar -nosession -noPlugin"
```

Với:

- `code.filemode`: Dùng để bỏ qua sự thay đổi về quyền của tệp ví dụ như quyền `root` hoặc `user`. Chống các chương trình chỉnh sửa tệp như là __VSCode__ sửa đổi quyền thay đổi tệp.
- `core.editor`: Dùng để thay đổi phần mềm sửa các nội dung văn bản ví dụ như khi dùng `git commit`. Nếu không thì sẽ là dùng phần mềm chỉnh sửa văn bản mặc định khá là tù.

## Một số lựa chọn khác

| Cờ                 | Tác dụng                                                   |
| :----------------- | :--------------------------------------------------------- |
| `-l` hoặc `--list` | Hiển thị đầy đủ các cài đặt đã làm.                        |
| `-e` hoặc `--edit` | Chỉnh sửa tệp cài đặt gốc bằng phần mềm chỉnh sửa văn bản. |
| `--add`            | Chưa rõ                                                    |

## Thay đổi text-editor mặc định

Dùng cài đặt này để thay đổi `text-editor` mặc định.

`text-editor` này sẽ được dùng làm công cụ sửa đổi văn bản chính của __git__ và nó khá là tiện. Ví dụ như là thay đổi vim thành nano trên Linux hoặc là dùng __Notepad++__, __Sublime__, __VScode__, ... trên __Windows__

```bash
git config --global core.editor "<tool>"
```

Thường thì trên __Linux__ đã mặc định là sử dụng `nano` rồi nên không có vấn đề gì cả, chỉ có __Windows__ là hơi lởm.

Ví dụ này là dùng `notepad++` thay cho cái _notepad_ dởm của __Windows__. Vì mỗi máy tính sẽ khác nhau nên tốt nhất cần kiểm tra chính xác đường dẫn.

```bash
git config --global core.editor "C:/Program\ Files/Notepad++/notepad++.exe"
```

Nhưng vậy chưa đủ vì nó sẽ mở tệp cùng với cửa sổ __Notepad++__ hiện đang được mở. Thế nên sự thay đổi chỉ được lưu khi mà đóng toàn bộ cửa sổ (mất cả các cửa sổ đang làm việc), khá là bất tiện. Thế nên hãy dùng:

```bash
git config --global core.editor "'C:\Program Files\Notepad++\notepad++.exe' -multiInst -notabbar -nosession -noPlugin"
```

Với các cờ được thêm vào thì __Notepad++__ sẽ được mở ở cửa sổ độc lập khác với cửa sổ gốc. Thế nên sau khi chỉnh sửa xong _commit message_ có thể đóng độc lập cửa sổ đó đi.

## Hủy bỏ file.mode

Trong nhiều trường hợp, git sẽ kiểm tra và sau lưu cả _permission_ của tệp. Điều này khá là bất tiện.

Ví dụ nếu trên _kho lưu trữ_ dự án lưu mọi tệp dưới quyền _admin (sudo)_ thì cực kỳ phiền. Sau khi kéo được dự án về, xong rồi không chỉnh sửa được nên đã thay đổi hết tất cả quyền thành _public_. Và lúc `git status` thấy nó __tracking__ một đống tệp.

Để xử lý tình trang đó thì dùng lệnh sau:

```bash
git config --global code.filemode "false"
```

Lệnh đó sẽ yêu cầu git từ chối kiểm soát các thay đổi về quyền của tệp. Nghĩa là nếu bạn kéo tệp về, hiện tại là quyền `private`, sửa lại thành `public` và thay đổi nội dung rồi đẩy lên. Lúc này người khác kéo dự án về quyền vẫn là `private`.

!!! info "Info"
    __Tại sao phải phức tạo như vậy?__

    Điều này là do trong dự án có tệp __quan trọng__, có tệp có thể ít quan trọng hơn. Các quyền được sử dụng chủ yếu để bảo về và một người dùng hiểu biết sẽ _hạn chế_ tác động vào các tệp được bảo vệ.

    Khác với người dùng, cấp độ lập trình viên, người trực tiếp sửa đổi cần có quyền dể sửa nhưng mỗi lần sửa xong lại đóng lại quyền cực kỳ phiền phức. Thế nên nếu họ có quyền được sửa đổi kho lưu trữ, nên có một tính năng hỗ trợ cho việc dó.