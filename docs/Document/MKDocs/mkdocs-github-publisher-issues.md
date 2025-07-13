# Github publisher issue

## Lỗi plantuml plugin is not installed

```bash
ERROR   -  Config value 'plugins': The "plantuml" plugin is not installed
```

Tải về các gói phụ thuộc dưới này:

```bash
pip install mkdocs-puml
pip install mkdocs-plantuml
pip install mkdocs_puml
pip install mkdocs
pip mkdocs-material
pip mkdocs_puml
pip pymdown-extensions
```

Thêm vào tệp `.yml`

```yml
plugins:
  - search
  - plantuml:
      puml_url: https://www.plantuml.com/plantuml/
```

Bỏ cờ dưới này đi nếu muốn build thành công, mặc dù hiện tại mình cũng chưa rõ nó build ra cái gì.

```bash
plugins:
  - puml
  - build_plantuml:
       render: local
       bin_path: /path/to/plantuml
```

Xong sau đó mở `python enviroment`

```bash
python -m venv venv
```

Rồi build bằng lệnh:

```bash
mkdocs build
```