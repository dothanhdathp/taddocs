# Bitbake

## Show Recipes

Hiển thị toàn bộ tên của ___recipes___ hợp lệ trên project.

```bash
bitbake-layers show-recipes
```

## Task

### All Task

Lệnh này sẽ hiển thị toàn bộ _tasks_ có trong `<recipe-name>`

```txt
bitbake -c listtasks <recipe>
```

### Task phổ biến

Một số task thường hay dùng bao gồm

1. `do_fetch` – Downloads source code from SRC_URI.
1. `do_unpack` – Unpacks the source archive.
1. `do_patch` – Applies patches if any are specified.
1. `do_configure` – Configures the source (e.g., runs ./configure).
1. `do_compile` – Compiles the source code.
1. `do_install` – Installs compiled binaries into a staging directory.
1. `do_package` – Packages the installed files.
1. `do_deploy` – (Optional) Deploys output to a deploy directory.
1. `do_build` – The umbrella task that depends on all the above.

### Quá trình thực hiện recipe

Quá trình thực thi một `recipe` có thể xem bằng lệnh:

```bash
bitbake -g <recipe>
```