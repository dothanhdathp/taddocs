## Hệ điều hành là gì?

### Hệ điều hành là gì?

Hệ điều hành (Operating System - OS) là một phần mềm hệ thống quản lý và điều khiển mọi hoạt động của một thiết bị điện tử, bao gồm cả phần cứng và phần mềm. Nó đóng vai trò như một trung gian giữa người dùng và thiết bị, cho phép người dùng tương tác và sử dụng thiết bị một cách hiệu quả.

Nói đơn giản nhất nó chính là __Phần mềm / hệ phần mềm quản lý__ nhưng ở __cấp bậc cao nhất__

### Mục đích và vai trò

Có rất nhiều hệ điều hành khác nhau trên thế giới, có thể tham khảo bảng [Operating Systems: Timeline and Family Tree](https://eylenburg.github.io/os_familytree.htm) về các hệ điều hành đã từng có trên thế giới, có khoảng hơn 1100 loại hệ điều hành khác nhau. Những hệ điều hành có trên bảng là những hệ điều hành _chính_, có nhánh xác định, có nhiều phần phát triển độc lập so với nhánh chính và được đăng ký như là một họ hệ điều hành mới. Vì lẽ đó còn tồn tại rất rất nhiều hệ điều hành phụ khác mà bạn sẽ không thể tìm thấy ví dụ như BlissOS chỉ là hệ điều hành được tách từ dòng chính của Google, nhưng vẫn cần hỗ trợ từ Goole.

Các chức năng chính của hệ điều hành:

1. __Quản lý tiến trình _(Process Management)___:
    - Tạo, hủy, lập lịch và đồng bộ hóa các tiến trình.
2. __Quản lý bộ nhớ _(Memory Management)___:
    - Cấp phát, theo dõi và giải phóng bộ nhớ cho các tiến trình.
3. __Quản lý thiết bị _(Device Management)___:
    - Điều phối truy cập và giao tiếp với các thiết bị phần cứng.
4. __Quản lý hệ thống tệp _(File System Management)___:
    - Tổ chức, lưu trữ, truy xuất và bảo vệ dữ liệu trong hệ thống tệp.
5. __Quản lý người dùng và bảo mật _(Security & Access Control)___:
    - Xác thực người dùng, phân quyền và bảo vệ tài nguyên hệ thống.
6. __Giao tiếp giữa tiến trình (Inter-process _Communication - IPC)___:
    - Cho phép các tiến trình trao đổi dữ liệu và phối hợp hoạt động.
7. __Giao diện người dùng _(User Interface)___:
    - Cung cấp giao diện dòng lệnh hoặc đồ họa để người dùng tương tác.
8. __Quản lý tài nguyên hệ thống _(Resource Allocation)___:
    - Phân phối CPU, bộ nhớ, thiết bị I/O một cách hiệu quả.

## Phân loại hệ điều hành

### Unix-Like

Có khá nhiều hệ điều hành phổ biến, nhưng rất may chúng đều quy về hai mối chính để phân biệt là __Unix-like__ và phần còn lại.

#### Thế nào là Unix-Like

__Unix-Like__ là:
- Là tập hợp của các hệ điều hành sử dụng bộ hành vì và quản lý bộ nhớ, quyền, ... tương đồng với nhau. Hay nói cách khác, trải nghiệm người dùng trên những hệ điều hành này sẽ cảm thấy có rất nhiều điểm giống nhau.
- Gọi là _like (giống)_ vì các hệ điều hành dạng Unix-Like hoàn toàn không phải cùng nguồn gốc. Chúng có thể từ nhiều nguồn khác nhau nhưng mà vì cảm thấy Unix có cách tổ chức và hành vi tuyệt vời nên đã có tình làm giống như nó.
- Unix-like nổi tiếng, hay có thể nói rằng hệ điều hành tạo ra khái niệm __Unix-Like__ chính là __Linux__. Nhân Linux là tiền thân của vô vàn hệ điều hành sau này. Trong bốn hệ điều hành nổi danh nhất thế giới thì có tới ba cái đều học hỏi và ít nhiều kế thừa từ Linux:
    - Ubuntu: Con cả, dành cho máy tính bàn và là một trong những lựa chọn hàng đầu cho các máy server
    - iOS: Hệ điều hành của Apple, lõi cũng từ Linux và kế thừa khái niệm Unix-Like
    - Android: Hệ điều hành phổ biến nhất trên điện thoại, máy tính bảng, ... và các thiết bị khác. Cũng kế thừa từ Linux.
Và trong số đó chỉ có __Windows__ lựa chọn con đường khác. Nhưng đúng như thời gian đã chứng minh, __Windown__ cho người dùng trải nghiệm khá tốt với chuột nhưng cách tổ chức bộ nhớ rất tệ. Sau quãng thời gian dài sử dụng, rất nhiều người đã công nhận bộ _command_ và tổ chức bộ nhớ của Windows kém xa so với Linux. Nhưng ở nửa đầu của sự phát triển, nơi máy tính vẫn còn là một thứ công cụ phép thuật xa xỉ và khó hiểu thì chính hệ điều hành Windows mới là thứ đem chiếc máy tính khô khan đến với người dùng. __Window__ vẫn thành công và có họ riêng __VMS-like__ mặc dù không được nhiều người quan tâm.

#### Chia hệ điều hành theo đối tượng phát triển

Cách chia này khoa học và hợp lý hơn. Các hệ điều hành khác nhau có hành vi giống nhau nhưng thực chất, sâu bên trong vẫn còn rất nhiều điểm khác biệt. Lúc này sự phân loại theo bên phát triển sẽ hợp lý hơn. Ví dụ như cùng họ Unix like, Ubuntu cho máy tính để bàn với mục tiêu cung cấp một hệ điều hành tốt, ổn định và miễn phí hoàn toàn cho người dùng. Trong  khi đó hệ điều hành Android nhắm đến khả năng tích hợp với nhiều loại thiết bị phần cứng và đa dụng hơn. Các nhánh có thể phân biệt như sau:

| Developer                              | Hệ điều hành                                     |
| :------------------------------------- | :----------------------------------------------- |
| Microsoft                              | Windows                                          |
| Apple                                  | iOS, macOS                                       |
| Linux kernel developers + distributors | GNU/Linux, Debian, Ubuntu, Fedora, RHEL, Arch... |
| Google                                 | Android, Chrome OS                               |
| Others                                 |                                                  |

<mark>TO DO More ...</mark>

## Các Hệ Điều Hành Quan trọng

- Microsoft
    - [Windows](/OS/Windows/os-windows-overview/)
- [Linux](/OS/Linux/os-linux-overview/)
    - Ubuntu
    - Debian
- Google
    - Android
    - Chrome OS
- Apple - iOS, MacOS

## Bài viết