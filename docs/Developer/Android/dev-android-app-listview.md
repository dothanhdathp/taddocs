# ListView

__ListView__ dùng để hiển thị danh sách các phần tử trong ứng dụng.

## UI

Khai báo trên giao diện

```xml
<ListView
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:id="@+id/listview">
</ListView>
```

## Khởi tạo 

### Set ArrayAdapter

- Tạo chuỗi _string_ `String[] array_listview`
- Tạo `ArrayList<String>` từ chuỗi _string_
- Tạo `ArrayAdapter<String>`
    - __Context__ được đặt bằng context của ứng dụng
    - Chọn __Layout__
        - Layout chọn trong `simple_list_item_1`,`simple_list_item_2`, ... được khai báo trong API
    - Cuối cùng đưa vào __ArrayList__ là tài nguyên cho __Adapter__

Code mẫu

=== "Java"
    ```java
    String[] array_listview = {"Apple", "Banana", "Cherry"};
    ArrayList<String> arrayList = new ArrayList<String>(Arrays.asList(array_listview));
    ArrayAdapter<String> adapter = new ArrayAdapter<>(
        this,
        android.R.layout.simple_list_item_1,
        arrayList
    );

    ListView listView = findViewById(R.id.listview);
    listView.setAdapter(adapter);
    ```
=== "Kotlin"
    ```kotlin
    val arrayAdapter: ArrayAdapter<*>
    val users = arrayOf("Apple", "Banana", "Cherry")

    // access the listView from xml file
    listView = findViewById(R.id.user_list)
    arrayAdapter = ArrayAdapter(this, android.R.layout.simple_list_item_1, users)
    listView.adapter = arrayAdapter
    ```