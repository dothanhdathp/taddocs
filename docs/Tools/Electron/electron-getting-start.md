# Getting Start

## First Application

### Khởi tạo module

!!! info "Info"
    Trước khi bắt đầu cần phải đảm bảo cài đặt __NodeJS__

Tạo thư mục `hello-electron` để chứa mã ứng dụng __Hello World__

=== "Windows"
    - Tạo thư mục `hello-electron`
    - Vào thư mục và mở `cmd.exe`

=== "Linux"
    ```bash
    mkdir hello-electron && cd hello-electron
    ```

Chạy lệnh sau để khởi tạo ứng dụng:

```bash
npm init -y
```

Sau lệnh đó tạo được tệp `package.json`, nội dung như sau:

```js title="package.json"
{
  "name": "hello-electron",
  "version": "1.0.0",
  "main": "main.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "description": ""
}
```

!!! note "Note"
    Trong tệp `package.json` gốc là `"main": "index.js",`. Nhưng thấy nó không đúng lắm nên mình đã sửa lại thành `main.js`

Tiếp theo chạy lệnh dưới này sẽ cài đặt các _node_module_ cần thiết

```bash
npm install electron --save-dev
```

### Viết hàm main

Tạo thêm một tệp `main.js` có nội dung như sau:

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

Tạo tiếp tệp `index.html` để làm tệp khởi chạy đầu tiên, tệp đó là

```html title="index.html"
<!-- index.html -->
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Hello Electron</title>
  </head>
  <body>
    <h1>Hello World from Electron!</h1>
  </body>
</html>
```


!!! warning "Warning"
    - Tệp `main.js` có là do trong tệp `package.json` vừa được khởi tạo ở trên.
    - Tệp `index.html` để chạy là do `main.js` gọi đến trong `win.loadFile('index.html');`

### Bật ứng dụng

Thêm nội dung này vào tệp `package.json`, mục `scripts`

```js title="package.json"
"scripts": {
  "start": "electron ."
}
```

Sau đó chạy lệnh sau:

```bash
npm start
```

Ứng dụng sẽ được mở lên với dòng chữ __Hello World!__, tệp được tải chính là tệp `index.html`