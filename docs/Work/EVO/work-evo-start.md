# EVO

Chào mừng đến với dự án mới, EVO

## Git

Cần có tài khoản `git` phù hợp để kéo dự án về. Hỏi người quản lý về quyền tải về và truy cập.

## Clone

1. Cài đặt [repo](../../Tools/Repo/repo-overview.md)
2. Dùng `repo` clone __project__.
    ```bash
    repo init -u git@github.com:kanavi-yap/manifest_evo7.git -b main -m default.xml
    ```
##  Sync

### Cách 1
Cách thông thường là dùng cách này.

```bash
repo sync --force-sync -j4
```

### Cách 2

__Force Sync__ sẽ ghi đè lên các tệp đã có, tự động thoát nếu _fail_ và chỉ thử _retry_ lại 3 lần:

```bash
repo sync --force-checkout --force-sync --fail-fast --jobs-checkout=64 --jobs-network=64 --retry-fetches=3
```

### Cách 3 _(khuyến nghị)_

Kéo các link và tệp `.git` về trước

```bash
repo sync --force-checkout --force-sync --network-only --jobs-network=4
```

Kéo các ___source-code___ về (gần giống `git clone`)

```bash
repo sync --force-checkout --force-sync --local-only --jobs-checkout=64
```

!!! note "Giải thích"
    Phương pháp này ổn định vì nó có 2 bước. Bước đầu tiên dựa vào tốc độ mạng và cả sự ổn định ___server___ của google nên không thể kéo dự án quá nhanh. Lần thứ 2 dựa vào tốc độ ổ đĩa, có thể giảm số `--jobs-checkout` xuống hoặc lên tùy tình hình. Nhưng nhìn chung thì thường có thể để tốc độ cao với các ổ đĩa loại `ssd`

## Chuyển nhánh

Xem các nhánh có tồn tại của repo

```bash
repo branches
```

Checkout về nhánh đúng (ở dự án này là nhánh `evo_dev`)

```bash
repo start evo_dev --all
```

Sau lệnh này sẽ thực thi việc chuyển đổi các nhánh về đúng nhánh làm việc.

## Build

Tìm đến thư mục có chứa tệp `set.env` ở đây là thư mục `maincore` và chạy lệnh:

```bash
source set.env aevo_n3000rv_r userdebug
quick_rebuild
```

## Kết quả

Nếu dựng thành công sẽ có một tệp tổng để __fwdn__ tên là `aevo_n3000rv_r-16g.fai` nằm ở:

```bash
/out/target/product/aevo_n3000rv_r/aevo_n3000rv_r-16g.fai
```

Dùng tệp đó để sang bài sau, __FWDN__

## Release

- __EVO__ không có thông tin gì về các bản ___Release___ chính thức. Các bản ___Release___ sẽ được gửi thẳng cho bên __Tester__ với các _số hiệu_ mà không kèm thông tin chỉnh sửa. Đấy là cái mình không thích ở dự án này.
- Ngoài ra mỗi lần __release__ sẽ có các `build-script` được nhúng kèm, cái này không khó mà mãi sau này mới làm.
- Vừa mới kiểm tra lại lịch sử, thấy trong `build-tool` có sẵn script từ V2 rồi, chứng tỏ mình bị lừa phải tự đi tìm hiểu cái __FWDN__ chứ còn gì nữa. Chơi ác thật sự.