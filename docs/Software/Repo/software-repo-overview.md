# Repo Overview

## Repo là gì?

## Tải về

### Repo mặc định

`repo` có một điểm rất kỳ quặc. Mặc định thì `repo` có thể được tải xuống thông qua:

__Cho hệ điều hành Debian/Ubuntu:__
```bash
# Debian/Ubuntu.
$ sudo apt-get install repo
```
__Cho hệ điều hành Gentoo:__
```bash
# Gentoo.
$ sudo emerge dev-vcs/repo
```
Nhưng sự thật lại không hoạt động được cho một số dự án mình từng làm, thế nên có thêm một lựa chọn khác đó là tải `repo` bằng tay:

### Repo google

```bash
mkdir -p ~/.bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo
chmod a+rx ~/.bin/repo
```
Sau đó có thể copy `repo` vào thư mục `/usr/bin` để sử dụng.

```bash
sudo cp ~/.bin/repo /usr/bin/
```

## Sử dụng

### Một số lệnh kiểm tra phiên bản

| Command               | Effect                                             |
| :-------------------- | :------------------------------------------------- |
| `repo --version`      | Xem số hiệu phiên bản                              |
| `repo --help`         | Tra cứu                                            |
| `repo help <command>` | Tra cứu trực tiếp các sử dụng của `command` nào đó |

### repo init

Xác thực một nhánh/tập bởi repo. Lệnh này sẽ kéo về một số tệp cơ bản nhất để chuẩn bị bắt đầu khởi tạo, đây là lệnh:

```bash
repo init {link.git} -m {manifest}
```
- `-b {branch}`: Tên nhánh
- `-m {manifest}`: Tên tệp tin manifest.xml được sử dụng. Nếu không có nó sẽ khai sẽ sử dụng `default.xml`

### sync

Dùng là

```bash
repo sync
```

```bash
repo sync <target name>
```

Với nhiều tùy biến có thể chọn

- `-j`: Tăng lên số luồng thực thi
    - `--jobs-network`=__JOBS__ : Tâng số luồng cho luồng `fetch` _(kéo git và các sửa đổi về)_
    - `--jobs-checkout`=__JOBS__ : Tâng số luồng cho luồng `pull` _(kéo source từ nguồn git về)_
- `--local-only`: Chỉ kéo các link về ___(fetch only)___, chưa kéo tệp.
- `--network-only`: Chỉ kéo project về từ các source, không thực hiện lại fetch ___(pull only)___
- `--force-sync`: Quyết liệt kéo nguồn về, có thể mất code dự án.
- `--force-checkout`: Quyết liệt chuyển nhánh, bất kể lỗi
- `--fail-fast`: Sẽ thoát ngay lập tức nếu __repo sync__ thất bại.
- `--retry-fetches`=__COUNT__: Sẽ thử __fetch__ lại source nếu có lỗi trong số lần __COUNT__

### branches

```bash
repo branches
```
```bash
repo start <branch_name> --all
```

### Do somthing for all chill branch in repo

```bash
repo forall -c 'git fetch && git pull'
```
### `sync`

|                                  |                                                                                       |
| :------------------------------- | :------------------------------------------------------------------------------------- |
| `-j` __JOBS__, `--jobs`=__JOBS__ | Số lượng công việc để chạy song song (__default: 0__; Dựa trên số lượng lõi CPU)           |
| `--jobs-network`=__JOBS__        | Số lượng công việc mạng để chạy song song (__defaults__ to `--jobs` or __1__)              |
| `--jobs-checkout`=__JOBS__       | Số lượng công việc thanh toán cục bộ để chạy song song (___defaults___ to `--jobs` or __8__) |

#### So sánh jobs-network và jobs-checkout

| Tính năng                         | `--jobs-network` (-jN)                                                  | `--jobs-checkout` (-jC)                                          |
| :-------------------------------- | :---------------------------------------------------------------------- | :--------------------------------------------------------------- |
| Hiệu ứng chính _(Primary Effect)_ | Thực hiện song song ___fetching___ _(downloading)_ từ _remotes server_. | Parallel updating of local working trees (checkout).             |
| Tài nguyên tiêu thụ               | Độ rộng băng thông, khả năng đáp ứng của _remote server_.               | CPU cục bộ, giao tiếp I/O của ổ cứng.                            |
| When to Adjust                    | Based on network speed and remote server limitations.                   | Based on local machine's CPU power and disk speed.               |
| Impact on Error                   | Directly impacts "429 Too Many Requests" errors.                        | Less direct impact on network errors; affects local performance. |