# KaTex in Mkdocs

> Thật kỳ lạ là KaTex không được hỗ trợ sẵn trong Mkdocs

## 1. Mở extension

```bash
markdown_extensions:
  - pymdownx.arithmatex:
      generic: true
```

## 2. Thêm Javascript và tệp css

```bash
extra_javascript:
  - javascripts/katex.js
  - https://unpkg.com/katex@0/dist/katex.min.js
  - https://unpkg.com/katex@0/dist/contrib/auto-render.min.js

extra_css:
  - https://unpkg.com/katex@0/dist/katex.min.css
```

## 3. Tạo và thêm javascript vào nguồn

Như ở trên ta thấy có tệp `javascripts/katex.js` nhưng tệp đó chưa hề tồn tại. Vậy nên hãy tạo tệp đó trong thư mục `docs`

```bash
.
├── docs
│   ├── scripts
│   │   └── katex.js
.   .
```

Sau đó thì chép nội dung như sau đây vào tệp `katex.js`:

```javascript
document$.subscribe(({ body }) => {
  renderMathInElement(body, {
    delimiters: [
      { left: "$$", right: "$$", display: true },
      { left: "$", right: "$", display: false },
      { left: "\\(", right: "\\)", display: false },
      { left: "\\[", right: "\\]", display: true }
    ]
  });
});
```