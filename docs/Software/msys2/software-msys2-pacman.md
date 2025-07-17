# MSYS2 pacman

Pacman là trình quàn lý gói của `msys2`. Sử dụng lệnh này trong `msys2` để tải về một số công cụ mạnh mẽ khác, ví dụ:

## Cập nhật

Cập nhật toàn bộ các gói đã cài đặt và giải phóng bộ nhớ

```bash
pacman -Suy
paccache -r
```

- `pacman -Suy` : Để tải về gói cài đặt
- `paccache -r` : Để xóa các thư mục temp, gói cài đặt được tải về, ...
- Nên thực hiện 2 lệnh cùng lúc để tối ưu

## Một số gói hữu ích

```bash
pacman -S tree
pacman -S curl
```

## Xoá gói

Xóa gói cài đặt
```bash
pacman -R <package-name>
```

Xóa gói cài đặt và các tệp phụ thuộc thêm
```bash
pacman -Rns
```

## Xem các gói đã cài

```bash
pacman -Q
```