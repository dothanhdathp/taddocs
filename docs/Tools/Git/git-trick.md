# Trick

Một số mẹo vặt khi thao tác với ___git___

## foreach_git

### Mô tả

Lệnh này sẽ áp dụng câu lệnh với tất cả các thư mục git con có trong đường dẫn. Lý thuyết đơn giản là nó tìm tệp ẩn `.git` tại thư mục và đi đến đó, thực thi lệnh, rút trở lại.

Ví dụ có nhiều thư mục git con và bạn muốn kéo tất cả về có thể dùng:

```bash
foreach_git git pull
```

### Cài đặt

Đây là đoạn __script__ của hàm `foreach_git()`. Để dùng được nó chỉ cần thêm đoạn code vào trong tệp `~/.bashrc` hoặc `~/bash_aliases` đều được.

```bash
function foreach_git()
{
   if [ $# -eq 0 ]; then
      echo "Usage: foreach_git <git command>"
      return 1
   fi

   base_dir=$(pwd)

   # Find all .git directories and run command inside their parent directories
   for i in $(find -name .git); do
        cd ${i:2:-4};
        $@;
        cd $base_dir;
   done;
}
```

#### Dành riêng cho Windows Git Bash

Vì __Windows__ sẽ sử dụng một hệ thống `git bash` khác _(cái mà được chạy qua môi trường ảo)_. Thường nó sẽ tải _env_ qua `%USERPROFILE%`. Ở đây dễ thấy làm gì có tệp `~/.bashrc`. Giải pháp đơn giản chỉ là tự tạo tệp đó và truyền vào nội dung tương tự là được.