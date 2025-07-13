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