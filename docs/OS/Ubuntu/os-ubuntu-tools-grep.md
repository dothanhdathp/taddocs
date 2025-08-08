# Grep

`grep` là tệp lệnh dùng để tìm kiếm. Đây là công cụ cực kỳ mạnh, tốt, tuyệt vời không có gì dể chê.

Ưu điểm của nó chỉ gói gọn 2 từ `nhanh` và `mạnh`

Thật sự lệnh này tìm kiếm nội dung cực kỳ tiện, có khả năng tùy biến để trực quan hơn và có khả năng cào nội dung thượng thừa.

## Tìm kiếm đoạn

### Tìm kiếm thông thường

Thông thường đây là chức năng tốt nhất để tìm kiếm một ký tự, từ, đoạn văn nào đó trong đầu ra của một lệnh hay một tệp. Ví dụ đơn giản mà cũng phù hợp với mục đích nhất chính là dò lỗi hoặc thông tin ví dụ:

```bash
sudo dmesg | grep failed
```

Tất cả dòng nào có từ `failed` sẽ được in ra. Lệnh `dmesg` sẽ in ra lịch sử hoạt động của nhân `kernel` trên hệ điều hành nên nó rất là dài. Và lệnh `grep` giúp việc tìm kiếm trở nên tiện hơn rất nhiều

!!! tip "Tìm kiếm đoạn"
    Bạn không nhất định phải tìm kiếm một từ, đối với một đoạn dài thì chỉ cần đưa và sau dấu `"`, ví dụ như này:

```bash
sudo dmesg | grep "failed set request"
```

### Tìm nhiều đối tượng

Ví dụ nếu có nhiều hơn một thành phần cần tìm kiếm, ví dụ như ở trên muốn kiểm tra cả hai module `Bluetoot` và `cp210x` thì dùng:

```bash
sudo dmesg | grep -e Bluetoot -e cp210x
```

Hoặc cũng có thể dùng:

```bash
sudo dmesg | grep -e "Bluetoot|cp210x"
```

!!! tip "Tìm kiếm đoạn"
    Tương tự cũng như với trường hợp nhiều ký tự, ở mỗi thành phần nếu muốn tìm kiếm đoạn cũng chỉ cần cho vào trong đấu `"`

### Regex

!!! info "Info"
    Cờ `-e` cũng hoạt động với PATTERNS ở cấp độ nhỏ hơn so. Kiểu như PATTERNS được dựa trên luật hệ thống. Kiểu `*` là bất cứ thứ gì.

    Đấy chỉ để biết thôi chứ thông thường vẫn là dùng cờ `-e` để làm việc với tìm kiếm nhiều mục tiêu là được.

Cờ `-P` để hoạt động với __RegEx__.

Ví dụ muốn tìm kiếm trong _timeline_ từ `18525.000000` đến `18525.999999`, có thể xác định sau `18525.` là số, hãy thử dùng __RegEx__ để tìm với câu lệnh:

_Câu lệnh RegEx này có nghĩa là `18525\.\d{6}`: `18525` và dấu `.` và tiếp theo là 6 số bất kỳ (miễn là số)_

```txt
sudo dmesg | grep -P "18525\.\d{6}"
```

!!! tip "Mở rộng"
    Về việc dùng __RegEx__ thế nào thì có thể tìm hiểu riêng về [RegEx]() trong bài viết.

## Tìm kiếm tệp bằng nội dung

!!! question "Question"
    Sẽ làm gì nếu bạn có một đoạn văn, hoặc từ muốn tìm cái mà biết nó nằm ở đâu đó trong cái thư mục tổng mà bạn không hề nhớ nó ở trong tệp nào. Bạn chỉ nhớ nó tồn tại! Hãy xem ví dụ vớ vẩn này để xem cách giải quyết!

Đầu tiên mình có một thư mục tên là `~/python-hand-install/Python-2.7.12`. Nó chỉ đơn giản là tệp mình tải về thôi đừng quan trọng nội dung, chỉ cần biết là nó có kha khá tệp con.

### Kiếm tệp trong thư mục

Sau đó thử xem những tệp nào chứa lệnh `printf`, hãy thử:

```bash
grep -r "printf"
```

### Tìm kiếm chính xác từ

Kết quả có khá nhiều, các từ như `lt_debugprintf` hay `sprintf` đều có, __làm sao để loại bỏ?__. Thêm cờ `-w` là được

```bash
grep -rw "printf"
```

!!! info "Info"
    Nếu muốn tìm kiếm từ trong một cụm mà nó chứa cụm cần kiếm có thể đổi cờ `-w` thành cờ `-i`. Nó tìm kiếm cũng không khác biệt cho lắm với việc không có cờ `-w` trừ vấn đề nó sẽ bôi đậm kết quả phù hợp, thích hợp để tìm kiếm cụm tương đồng.

### Lọc theo loại tệp

Tốt giờ đã giảm bớt kha khá. Tiếp theo là sẽ có kha khá các loại tệp vớ vẩn xuất hiện. Chủ yếu muốn xem nội dung lập trình __Python__ thôi thì chỉ có tệp `.py` mới thỏa mãn, ok tếp:

```bash
grep -rw "python" --include=*.py
```

### In số dòng

Ok cuối cùng là thêm số bằng cờ `-n` và sẽ lấy được số dòng chứa ký tự _(`-n` nghĩa là `line number`)_:

```bash
grep -rwn "python" --include=*.py
```

__Quá là tiện rồi!__

## Mở rộng

Có một số cách để mở rộng tìm kiếm. Với mình thì hay dùng nhất chỉ đơn giản có một vài kiểu.

### RegEx

Tìm kiếm trong tệp cũng có thể áp dụng __RegEx__ với cờ `-P`

```bash
grep -rwn -P "printf.*genrand_res53" --include=*.py
```

### In thêm dòng

Có thể mở rộng thêm số dòng bằng hai cờ `-A`,`-B` và `-C` với ý nghĩa là:

- `-A`: Hiển thị các dòng phía sau 
- `-B`: Hiển thị các dòng phía trước 
- `-C`: Hiển thị các dòng phía cả trước và sau

Ví dụ dùng lại câu lệnh trên kia khi còn một kết quả, ví dụ muốn biết trước đó làm gì thì dùng cờ `-A` kèm số dòng muốn hiển thị, ở đây ví dụ là `3` dòng:

```bash
grep -rwn -P "printf.*genrand_res53" --include=*.py -A 3
```

### Mở rộng của lọc theo tệp

Lọc theo tệp còn có nghịch đảo của nó là cờ `--exclude`, loại bỏ tìm kiếm ở các tệp có đuôi được khai báo.

Thêm nữa là tính năng lựa chọn nhiều. Ví dụ ở trên ta dùng cờ `--include` để thêm tìm kiếm cho các tệp loại `.py` thôi. Trong trường hợp có nhiều hơn một loại tệp cần tìm kiếm có thể dùng thế này (thêm `.c` và `.status`):

```bash
grep -rwn -P "printf" --include=*{.status,.py,.c}
```

Ngược lại cả bên `--exclude` cũng hoạt động tương tự:

```bash
grep -rwn -P "printf" --exclude=*{.status,.py,.c}
```

### Loại các tệp dạng binary (thuần túy thực thi)

grep đọc dữ liệu hoàn toàn dưới dạng nhị phân thuần túy nên nó sẽ không có lược bỏ các tệp có khả năng thực thi (hay còn gọi là các tệp `binary`). Thi thoảng kết quả kiểu như này có thể xuất hiện:

```txt
grep: Python-2.7.12.tgz: binary file matches
```

Thi thoảng các tệp đó có rất rất nhiều, thế nên có thể loại bỏ chúng bằng cờ -I:

```txt
grep -rwn -P "printf" -I
```

Thế là giải quyết xong vấn đề.