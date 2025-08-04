# Git Clone

> - Chương này mình sẽ đi sâu hơn vào lệnh này. Chủ yếu chỉ xoay quanh các chức năng mở rộng cần thiết, hoặc mình cần biết là chính. Các tính năng mở rộng hơn hãy tham khảo tại __trang chủ__.
> - Trang chủ: [https://git-scm.com/docs/git-clone](https://git-scm.com/docs/git-clone)

## Mô tả

Về chức năng, lệnh này chỉ có đúng một dòng mô tả ___"Clone a repository into a new directory"___ nghĩa là dùng để sao chép một kho lưu trữ từ ___server___ về máy. Cách dùng đơn giản nhất là:

```txt
git clone <repository>
```

`repository` có thể là một _link_ github hoặc có thể là bất kỳ đường dẫn nào khác miễn nó có chung ___kết cấu git___.

!!! info "Thông tin bên lề"
    Điểm thú vị của phần ___kết cấu git___ chính là do một vài _biến thể_ có thể có của _git_ cũng có thể dùng chung một vài tính năng với nhau. Theo dòng lịch sử, ở quá khứ, có một người có ý tưởng đã tạo ra __phần mềm quản lý phiên bản__ đầu tiên và __đánh phí và bản quyền hóa nó__ . Điều này làm cho việc quản lý phiên bản của __Linux__ gặp vấn đề. Thế nên __Linus Torvalds__ đã tạo ra _git_ và _miễn phí nó_ _(một lần nữa thực sự cảm ơn __Linus Torvalds__)_. Chính việc `open-source` nó khiến cho có một số cộng đồng hứng thú đã tạo ra một vài phiên bản khác nhau của _git_ và liên tục cập nhật cho nó.

Về cơ bản sau khi dùng `git clone` thì sẽ có hai phần được kéo sẽ có cả __nội dung__ và __lịch sử__. Thông qua đó nó biết được có bao nhiêu người, hoặc bao nhiêu phiên bản hiện có của kho lưu trữ này.

## Kéo dự án bằng https

Một trong những ___trick lỏ___ đầu tiên mà mình học được về cái lệnh này đó là sử dụng clone bằng `https`.

Trong mỗi dự án ___git___, miễn là bạn có thể kết nối thì sẽ luôn có hai đường dẫn để kéo dự án về là qua

## Giảm tải lịch sử

Đây không phải chuyện hiếm. Với một số dự án lớn hoặc đơn giản ví dụ như cái dự án này của mình thôi, số lượng ___commit___ được đẩy lên là _hàng ngày_. Thế nên càng ngày thì số lượng commit được gửi lên ___server___ càng nhiều.

Mỗi lần như thế, trong thư mục ẩn `.git` sẽ lại lưu lại càng nhiều lịch sử. Dung lượng thì tùy thuộc vào mỗi dự án giống khác nhau thế nào thôi. Thế nên trong một số dự án sẽ có cách để ___kéo dự án về mà không kèm lịch sử___