# Tmux

## Tmux là gì

- __tmux__ nghĩa là `terminal multiplexer` (chia thành nhiều kênh).
- Tác dụng của __tmux__ là ứng dụng sẽ chia terminal thành nhiều phiên làm việc (session). Khi bạn chạy ứng dụng này tức là bạn mở một session mới. Trong mỗi session, có nhiều terminal

## Tải về tmux

```bash
sudo apt-get install tmux -y
```
## Sử dụng

### Câu lệnh

#### Tạo phiên

> Tạo một phiên mới _(bất kỳ, tên sẽ được đánh theo luật)_

```bash
tmux
```

> Tạo một phiên mới _(bất kỳ, tên sẽ được đánh theo luật)_. Đồng thời mở luôn phiên đó trong trong cửa sổ làm việc:

```bash
tmux a
```

> Cách này thường dùng nhất. Tạo một phiên làm việc với với tên xác định và cũng mở luôn phiên làm việc đó.

```bash
tmux new -s <name>
```

#### Mở lại phiên làm việc

> Nếu phiên làm việc đã tồn tại, nhúng nó và cửa sổ đang gọi

```bash
tmux a -t <name>
```

#### Xóa phiên

```bash
tmux kill-session -t <name>
```

### Phím tắt

| Phím tắt                   | Tác dụng                                  |
| :------------------------- | :---------------------------------------- |
| `Ctrl + B` + `D`           | Thoát cửa sổ hiện tại                     |
| `Ctrl + B` + `C`           | Tạo một cửa sổ mới                        |
| `Ctrl + B` + `W`           | Xem danh sách cửa sổ hiện tại             |
| `Ctrl + B` + `N` or `P`    | Chuyển đến cửa sổ tiếp theo hoặc trước đó |
| `Ctrl + B` + `F`           | Tìm kiếm cửa sổ                           |
| `Ctrl + B` + `,`           | Đặt/Đổi tên cho cửa sổ                    |
| `Ctrl + B` + `&`           | Đóng cửa sổ                               |
| `Ctrl + B` + `pgup`/`pgdn` | Cuộn con trỏ để đọc log trong cửa sổ      |