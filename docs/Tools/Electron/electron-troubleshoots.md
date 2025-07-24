# Issue Track

## List

??? bug "'electron-builder' is not recognized as an internal or external command"

    Lỗi đó thường có nghĩa là hệ thống của bạn không thể tìm thấy lệnh `electron-builder`, nó chưa được cài đặt hoặc nó không có trong hệ thống của bạn`PATH`.

    ```bash
    npm install --save-dev electron-builder
    npm install -g electron-builder
    ```

??? bug "errorOut=ERROR: Cannot create symbolic link ..."
    Chạy lại lệnh với quyền ___Adminstrator___