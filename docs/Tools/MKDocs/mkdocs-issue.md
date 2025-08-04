# Mkdocs Issue

## Issue msgpack.exceptions.ExtraData

Hôm nay gặp phải một vấn đề cực kỳ nghiêm trọng. Lỗi không thể khởi động được `mkdocs server`. Mã lỗi rất dài nhưng đến cuối sẽ có dòng này:

```txt
File "<frozen runpy>", line 198, in _run_module_as_main
File "<frozen runpy>", line 88, in _run_code
...
msgpack._cmsgpack.unpackb msgpack.exceptions.ExtraData: unpack(b) received extra data.

```

Tìm đủ mọi cách xóa cả `python` đi cũng không được, cuối cùng tìm thấy ở trong `%USERPROFILE%/.cache` có thư mục `mkdocs_puml`. Đây chính là tệp cache của ___mkdocs___. Xóa đi là được.