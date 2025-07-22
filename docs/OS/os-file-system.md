# File System

Đây là thuật ngữ chính thống dùng để chỉ cách thức hệ điều hành tổ chức, lưu trữ và quản lý dữ liệu trên thiết bị lưu trữ như ổ đĩa cứng, SSD, thẻ nhớ, v.v.

📂 Một số ví dụ phổ biến về file system:

- `NTFS` (Windows NT File System) – Hệ thống tệp mặc định của Windows hiện đại
- `FAT32` (File Allocation Table 32) – Phổ biến với các thiết bị USB, nhưng có giới hạn kích thước
- `exFAT` – Tối ưu cho bộ nhớ di động, hỗ trợ tệp lớn hơn FAT32
- `ext4` (Fourth Extended File System) – Dùng trong Linux
- `APFS` (Apple File System) – Hệ thống tệp của macOS và iOS

Các hệ thống tệp khác nhau sẽ có sự khác biệt khá nhiều về chức năng và trực tiếp ảnh hưởng đến hệ thống phân tầng tệp và chia dùng bộ nhớ trong ổ đĩa. Ví dụ với hệ thống `ext4` sẽ dùng trong __Linux__ sẽ giới hạn ở 255 ký tự dành cho tên tệp. Tên tệp được viết theo dạng mã `UTF-8` hay là `8bit` cho một ký tự. Các ký tự đặc biệt đều không thoả mãn.

Còn trên Windows với hai kiến trúc `FAT32` và `NTFS` thì không có vấn đề này. Sau đây là một số khác biệt.

## FAT32

Cách phân bổ hệ thống cũ, khá nhanh và nhẹ nhưng do cách đánh địa chỉ nên giới hạn chỉ có thể sử dụng được `4GB` cho tệp. Tức là bạn chỉ có thể có tệp có dung lượng cao nhất là `4GB`.

## NTFS

Là cấu trúc mở rộng của __Windows__ cho phép tồn tại những tệp lớn hơn `4GB`, và cũng thường được sử dụng ở thời điểm hiện tại. Vì không  phải chỉ những nghành đặc thù mà chính các tệp đa phương tiện như ảnh và phim hiện giờ có chất lượng cực cao thì dung lượng tệp vượt quá không phải điều gì đó quá là xa lạ.

