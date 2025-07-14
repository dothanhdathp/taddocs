# Sambashare

## Tác dụng

Chia sẻ thư mục trên __Ubuntu/Linux/Mac__ cho __Windows__ thông qua mạng.

___A Samba file server___ cho phép chia sẻ tệp trên nhiều hệ điều hành khác nhau qua mạng. Nó cho phép bạn truy cập tệp trên máy tính để bàn từ máy tính xách tay và chia sẻ tệp với người dùng __Windows__ và __macOS__.

## Cài đặt

```bash
sudo apt update
sudo apt install samba
```

### Kiểm tra

```bash
whereis samba
```

Nó sẽ nên là như này

```bash
samba: /usr/sbin/samba /usr/lib/samba /etc/samba /usr/share/samba /usr/share/man/man7/samba.7.gz /usr/share/man/man8/samba.8.gz
```

## Cấu hình

1. Để chỉnh sửa sambashare, chỉnh sửa tệp cấu hình sau:

```bash
sudo nano /etc/samba/smb.conf
```

2. Thêm đoạn sau vào code

```text
[$NAME]
    comment = Samba on Ubuntu.  Not improtant
    path = $DIR
    read only = no
    browsable = yes
```
- `$NAME` : Tên thư mục sambashare sẽ được export ra ngoài.
- `$DIR` : Địa chỉ thư mục chia sẻ

3. Restart server to take effect

```bash
sudo service smbd restart
sudo ufw allow samba
```

4. Từ khi Sambashare quyết định sử dụng mật khẩu riêng, bạn cần lệnh này để tạo account/pws

```bash
sudo smbpasswd -a dtdat
```

## Mở ổ trên Windows

Ở Explorer chuột phải vào vùng Network, chọn `Add a network location`.

<figure markdown="span">
    ![alt text](img/software-sambashare-0.png)
    <figcaption>Add a network location</figcaption>
</figure>

Rồi điền `ip` và `$NAME` ở trên vào.

<figure markdown="span">
    ![alt text](img/software-sambashare-1.png)
    <figcaption>Select Ip</figcaption>
</figure>