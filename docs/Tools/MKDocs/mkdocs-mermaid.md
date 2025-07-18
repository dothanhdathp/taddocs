# MKDocs Mermaid

## Tải về mermaid-plugin

```yml
pip install mkdocs-mermaid2-plugin
```

## Cập nhật plugin

Dùng:

```yml
plugins:
  - search
  - mermaid2
```

Hoặc:

```yml
plugins:
  - search
  - mermaid2:
      version: 10.0.2
```

## Khai báo extensions

```yml
markdown_extensions:
  - pymdownx.superfences:
      custom_fences:
        - name: mermaid
          class: mermaid
          format: !!python/name:mermaid2.fence_mermaid_custom
```