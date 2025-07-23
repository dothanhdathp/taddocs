# Create App

__Mục tiêu__: Dùng __Electron__ tạo ra ứng dụng.

Thêm đoạn như sau vào tệp `package.json`:

```js title="package.json"
"scripts": {
  "start": "electron .",
  "dist": "electron-builder"
},
"build": {
  "appId": "com.yourapp.id",
  "productName": "YourAppName",
  "directories": {
    "buildResources": "assets",
    "output": "dist"
  },
  "files": [
    "main.js",
    "index.html",
    "node_modules/",
    "package.json"
  ],
  "win": {
    "target": "nsis"
  },
  "mac": {
    "target": "dmg"
  },
  "linux": {
    "target": "AppImage"
  }
}
```

Sau đó chạy lệnh:

```bash
npm run dist
```

!!! tip "Tip"
    Nếu chạy lỗi, hãy chạy thử lại với quyền ___adminstrator___