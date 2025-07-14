# Snippets

## Snippets là gì?

- `snippets` tức là các đoạn mã, đoạn trích dẫn. `Code snippets` là các đoạn code có tính chất lặp đi lặp lại và trở thành một dạng khuôn mẫu để sử dụng. `Snippets` thông thường được đi kèm với các IDE dùng riêng cho một loại ngôn ngữ xác định, nên mỗi lần code sẽ đều thấy gợi ý về code mẫu hay nhắc về cấu trúc. Dễ thấy nhất là với `QT Creator` và `Android Studio` có khả năng nhắc mã rất mạnh.
- Nhưng nên nhớ rằng Visual Studio Code chỉ là `Text Editor`, nó không có một IDE hoàn chỉnh hay dành riêng cho một ngôn ngữ nào cả, thế nên `snippets` thông thường sẽ được đưa vào thông qua các `extension` được các lập trình viên biên soạn. Người dùng có thể thêm chúng vào trong chương trình.
- Ngoài những điều đó, có một thứ khá thú vị khác là VS Code còn cho phép ta tự thêm `snippets` - _snippets tự định nghĩa_.

## Thêm Snippets như nào?

### Cách 1

Để thêm được `snippets`, vào:
> `File` > `Preferences` và chọn __`Configure User Snippets`__

Lúc này có thể chọn ngôn ngữ như `java`, `c++`, `markdown` để chương trình tạo ra một bản sao `snippets` dưới dạng tệp `.json`. Vì nó là `user-snippets` nên `snippets` từ extension vẫn hoạt động bình thường.

### Cách 2

Các tệp json của snippets được lưu ở đây

```txt
%USERPROFILE%\AppData\Roaming\Code\User\snippets\
```

- `markdown.json` -> Dùng cho `markdown`
- `cpp.json` -> Dùng cho `C++`

!!! note "Note"
    Cái tên cpp, markdown, ... đều sẽ là tên quốc tế và được quy định (bằng một bên nào đó). Thế nên nếu bạn có tự tạo ra một ngôn ngữ nào đó mới thì cũng khá chắc là không có snippet định nghĩa cho nó đâu.

!!! note "Note"
    Câu hỏi ở đây là có thể nào định nghĩa <u>snippet</u> cho mọi loại tệp được không?

## User Define

> Cái này làm sau cũng được