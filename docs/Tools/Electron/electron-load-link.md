# Tải đường dẫn

Có một cách đơn giản hơn để tạo một ứng dụng mà không cần viết quá nhiều đó là tải lại đường dẫn từ một trang web nào đó. Việc đơn giản nhất đó là thay từ `app.loadFile(file)` đổi thành `win.loadURL(link)`

Đây là một ví dụ đơn giản về việc tải đường dẫn, ứng dụng đơn giản dưới đây là dùng đường dẫn của `translate.google.com` là ứng dụng dịch thuật.

=== "Before"
    ```js title="main.js"
    const { app, BrowserWindow } = require('electron');

    function createWindow() {
    const win = new BrowserWindow({
        width: 800,
        height: 600,
    });

    win.loadFile('index.html');
    }

    app.whenReady().then(createWindow);
    ```

=== "After"
    ```js title="main.js"
    const { app, BrowserWindow } = require('electron');

    function createWindow() {
    const win = new BrowserWindow({
        width: 800,
        height: 600,
    });

    win.loadURL('https://translate.google.com/?sl=en&tl=vi&op=translate');
    }

    app.whenReady().then(createWindow);
    ```