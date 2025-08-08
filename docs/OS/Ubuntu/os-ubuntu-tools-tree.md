# Tree

## Tải về

Lệnh `tree` trên Ubuntu (và các bản phân phối Linux khác) là một tiện ích dòng lệnh liệt kê đệ quy các nội dung của một thư mục theo định dạng giống như cây có chiều sâu. Điều này cung cấp một biểu diễn trực quan về cấu trúc phân cấp của hệ thống tệp.

Lệnh này thường không có sẵn và phải tải về qua dòng lệnh:

```bash
sudo apt-get install tree
```

Lệnh này cung cấp một cách trực quan hơn nhiều để xem xét cây thư mục ở trên cửa sổ dòng lệnh `console`. Không bắt buộc phải sử dụng, nhưng khuyến nghị!

## Sử dụng

Lệnh này không có nhiều lệnh, và không phức tạp. Một số cách tiêu biểu như sau:

1. `tree`
    - Sẽ hiển thị tất cả tệp/thư mục ở trong khu vực gọi dòng lệnh. Nó sẽ quét và biểu diễn tất cả các tệp lên cửa sổ lệnh. Hãy cẩn thận vì đôi khi ở `root` hay là ở trong những thư mục có số lượng tệp nhiều rất có thể treo màn hình.
1. `tree -L $NUMBER` biểu diễn với độ sâu `$NUMBER`
    - Thường được dùng hơn. Với `$NUMBER` là một số. Lệnh đó sẽ chỉ biểu diễn các thành phần với độ sâu `$NUMBER` rồi dừng lại.
1. `tree -d` dùng để biểu diễn các tệp ___(directories only)___