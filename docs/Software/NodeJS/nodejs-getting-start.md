# Getting Start

Trên [trang hướng dẫn](https://nodejs.org/en/learn/getting-started/introduction-to-nodejs) này có nói về cách khởi động server bằng `nodejs`

Tạo thử tệp `server.js`

```js title="server.js"
const { createServer } = require('node:http');

const hostname = '127.0.0.1';
const port = 3000;

const server = createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello World');
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
```

Mở một _web browser_ bất kỳ và vào đường dẫn `http://127.0.0.1:3000/` kết quả sẽ có một dòng __Hello World__ trên trang chủ.

<figure markdown="span">
    ![alt text](img/nodejs-getting-start.png)
    <figcaption>localhost:3000</figcaption>
</figure>
