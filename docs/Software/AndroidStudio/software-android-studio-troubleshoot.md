# Troubleshoot

!!! bug "Bug 1"
    Unable to make field private final java.lang.String java.io.File.path accessible: module java.base does not "opens java.io" to unnamed module @38919b44

!!! bug "Bug 2"
    Could not create parent directory for lock file C:\Program Files\...\gradle-x.x.x-bin.zip.lck

Lỗi này xảy ra do cái tệp mà bạn cài đặt Android Studio ấy đang để quyền của __Admin__ mà ứng dụng thì lại là quyền __User__ nên ứng dụng không thể tạo được các tệp cần thiết.

Để sửa lỗi đó có 2 cách:

- Chạy ứng dụng dưới quyền __Adminstratore__
- Sửa đổi quyền của thư mục từ __Adminstratore__ thành __User__. Cách này khuyến nghị hơn vì nó triệt để và đỡ phiền phức về sau. Dù sao cũng là ứng dụng lập trình quản gì mấy cái quyền.

Lệnh thay đổi quyền như sau __*(Chạy cmd dưới quyền Admin)*__

```batch
icacls "C:\Program Files\Android\Android Studio\" /grant Everyone:(OI)(CI)F /T
```

ví dụ này chung chung cho __Android Studio__ _(thường thì sẽ cài đặt vào địa chỉ đó)_. Nếu cài đặt ở địa chỉ khác hãy thay đổi câu lệnh.