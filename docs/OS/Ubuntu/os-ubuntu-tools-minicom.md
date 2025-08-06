# Minicom

`minicom` là công cụ đọc _serial COM_ như __Putty__, __MobaXterm__, ... trên windows.

Ứng dụng này thường sẽ là giải pháp thay thế tốt cho việc cắm các thiết bị như __Raspberry Pi__ hoặc __Adruino__

## Cài đặt

```bash
sudo apt-get install minicom -y
```

## Cách dùng

### Xác định driver

Đầu tiên cắm thiết bị kết nối __serial__ qua cổng __USB__. (ví dụ như dây đọc log `adb` của ___Android___) .

Sau đó để xem cổng nào đang được kết nối thì dùng `sudo dmesg | grep USB`. Kết quá sẽ đại loại như này:

```txt
[18525.476146] usb 1-3: New USB device found, idVendor=10c4, idProduct=ea70, bcdDevice= 1.00
[18525.476163] usb 1-3: New USB device strings: Mfr=1, Product=2, SerialNumber=5
[18525.476171] usb 1-3: Product: CP2105 Dual USB to UART Bridge Controller
[18525.481178] usb 1-3: cp210x converter now attached to ttyUSB0
[18525.483384] usb 1-3: cp210x converter now attached to ttyUSB1
```

Ok nhìn rất rõ phải không, có thiết bị được kết nối và có hai cổng là `ttyUSB0` và `ttyUSB1`

### Kết nối

Chọn một cổng làm mẫu, ví dụ thường _log_ sẽ được đọc ở cổng đầu tiên, tức là `ttyUSB0`.

!!! info "Info"
    Thông số như `bitrate` cho mỗi lần truyền khác nhau. Cần phải nắm rõ. Cái này thì không có một tiêu chuẩn nào. Với các thiết bị cũ, Bps thường chỉ ở __9600__, giờ thì trung bình đã là __115200__

Gõ lệnh sau để bắt đầu với __minicom__:

```txt
sudo minicom -s
```

Sẽ có một bảng như này xuất hiện 

```txt
+-----[configuration]------+
| Filenames and paths      |
| File transfer protocols  |
| Serial port setup        |
| Modem and dialing        |
| Screen                   |
| Keyboard and Misc        |
| Save setup as dfl        |
| Save setup as..          |
| Exit                     |
| Exit from Minicom        |
+--------------------------+
```

Lựa chọn `Serial port setup` để bắt đầu cấu hình. Bảng lựa chọn chuyển đổi thành hình thế này:

```txt
+-----------------------------------------------------------------------+
| A -    Serial Device      : /dev/modem                                |
| B - Lockfile Location     : /var/lock                                 |
| C -   Callin Program      :                                           |
| D -  Callout Program      :                                           |
| E -    Bps/Par/Bits       : 115200 8N1                                |
| F - Hardware Flow Control : No                                        |
| G - Software Flow Control : No                                        |
| H -     RS485 Enable      : No                                        |
| I -   RS485 Rts On Send   : No                                        |
| J -  RS485 Rts After Send : No                                        |
| K -  RS485 Rx During Tx   : No                                        |
| L -  RS485 Terminate Bus  : No                                        |
| M - RS485 Delay Rts Before: 0                                         |
| N - RS485 Delay Rts After : 0                                         |
|                                                                       |
|    Change which setting?                                              |
+-----------------------------------------------------------------------+
```

1. Ví dụ với cổng kết nối chọn là `ttyUSB0`, thay đổi giá trị đầu `Serial Device` bằng các ấn phím `A` và sửa. `/dev/modem` thành `/dev/ttyUSB0`

1. Tiếp theo chon `E` để sửa __Baund Rate__. Mặc định sẽ có giá trị là `115200 8N1` nghĩa là ___tốc độ truyền 115200, 8 bit và stop bit 1___ _(Đại loại là thế, về tên đúng của các khái niệm mình không nhớ rõ)_

1. Sau khi dã cài đặt xong thì ấn __Enter__ để thoát lại bảng đầu tiên.

1. Lần này thì chọn __Exit__. Serial sẽ đổi thành màn hình giống như là cửa sổ đen của __Putty__ hoặc __Teraterm__ ...

!!! warning "Bug"
    Trong trường hợp mà không thể nhập được ký tự vào trong đó là do bạn đang chạy thông qua `ssh`. Để sửa nó thì tại cửa sổ `Serial port setup`, Ấn `F` ___(Hardware Flow Control)___ để đổi lại giá trị `Yes`/`No` và chạy lại là được.

## Phím tắt

Trong khi ___minicom___ đang chạy ở chế độ console, lúc này chỉ nhận các ___phím tắt___, cái mà hoạt động gần giống với `vim`, hoặc `nano`, ..

Ấn tổ hợp phím `Ctrl A + Z` sẽ mở bảng các lệnh của __Minicom__

```txt
+-------------------------------------------------------------------+
|                      Minicom Command Summary                      |
|                                                                   |
|              Commands can be called by CTRL-A <key>               |
|                                                                   |
|               Main Functions                  Other Functions     |
|                                                                   |
| Dialing directory..D  run script (Go)....G | Clear Screen.......C |
| Send files.........S  Receive files......R | cOnfigure Minicom..O |
| comm Parameters....P  Add linefeed.......A | Suspend minicom....J |
| Capture on/off.....L  Hangup.............H | eXit and reset.....X |
| send break.........F  initialize Modem...M | Quit with no reset.Q |
| Terminal settings..T  run Kermit.........K | Cursor key mode....I |
| lineWrap on/off....W  local Echo on/off..E | Help screen........Z |
| Paste file.........Y  Timestamp toggle...N | scroll Back........B |
| Add Carriage Ret...U                                              |
|                                                                   |
|             Select function or press Enter for none.              |
+-------------------------------------------------------------------+
```

Các lệnh không có gì nhiều chủ yếu cần nhớ <mark class=red>lệnh thoát bằng tổ hợp phím</mark> `Ctrl A + X`