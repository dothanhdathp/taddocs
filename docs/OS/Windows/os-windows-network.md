# Network

## host

Tệp `host` là được dùng để cài đặt cho mạng, sử dụng tệp này có thể đặt tên cho một số địa chỉ IP.

- Đường dẫn ở đây `C:\Windows\System32\drivers\etc\host`
- Thêm cấu hình ip vào tệp ___host___, ví dụ thêm địa chỉ cho `pi`:
    ```txt
    192.168.100.144     pi
    ```
- Từ đó có thể dùng tên _pi_ thay cho địa chỉ đó, lệnh `cmd` ví dụ như này:
    ```cmd
    C:\Users\dtdat>batch

    Pinging pi [192.168.100.144] with 32 bytes of data:
    Reply from 192.168.100.144: bytes=32 time=44ms TTL=64
    Reply from 192.168.100.144: bytes=32 time=80ms TTL=64
    ```