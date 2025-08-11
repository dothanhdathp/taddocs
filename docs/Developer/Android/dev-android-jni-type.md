# JNI Config

- Xem xét lại ví dụ từ phần trước 

## Đổi tên thư viện

- Trong tệp `CMakeLists.txt`, có dòng `project("lib-name")`, nó chính là keywork được sử dụng để gọi từ


| Java   | C++            | Kiểu chuỗi   |
| :----- | :------------- | :----------- |
| String | jstring        | NA           |
| int    | jint           | jintArray    |
| ?      | jchar          | jcharArray   |
| ?      | jlong          | jlongArray   |
| ?      | jshort         | jshortArray  |
| ?      | jfloat         | jfloatArray  |
| ?      | jdouble        | jdoubleArray |
| ?      | jvalue         | jvalueArray  |
| ?      | jobject        | NA           |
| ?      | jarray         | NA           |
| ?      | jobjectRefType | NA           |
| ?      | union          | NA           |