# Build WSA

## Thiết lập môi trường

Sau khi tải về dự án thành công thì sẽ có cây thư mục nhìn như này:

```text
.
├── als-build.sh
├── bitbake
├── build-tcc8021-hmx
├── documentation
├── LICENSE
├── meta
├── meta-humax
├── meta-poky
├── meta-qt5
├── meta-selftest
├── meta-skeleton
├── meta-telechips
├── meta-yocto
├── meta-yocto-bsp
├── oe-init-build-env
├── oe-init-build-env-memres
├── README
├── README.hardware
├── scripts
└── source-mirror
```

Tại gốc thư mục gõ lệnh sau:

```bash
source meta-humax/setup-environment
```

Thường lần đầu tiên sẽ có câu hỏi như này:
```bash
Do you want to use the source-mirror function? (y/n) y
This may take a long time depending on your network environment.
Continue? (Y/n) => Y
Create source-mirror directory
Choose ALS version
1. als_v1.0.4
2. als_v2.5.0
3. als_v2.5.1
4. als_v3.0.0
select number(1-4) => 2
```

- `Do you want to use the source-mirror function? (y/n)` 👉 `y`
- `Continue?` 👉 `Y`
- `select number(1-4)` 👉 `2`

Rồi chờ _script_ hoàn thành công việc của nó. Khi thành công sẽ được chuyển đến một tệp tin khác là `build-tcc8021-hmx`.

## Build

Hệ thống __Yocto__ dựng với `bitbake`. Có khá nhiều module quan trọng nhưng mới đầu hãy chạy 2 lệnh này:

```bash
bitbake diva-ivi-launcher && bitbake factory
```

Hai module tổng cái mà sẽ đóng gói hầu như toàn bộ hệ thống cho thiết bị. Với `factory` là những phần nghiêng dần về phía _micom_ phía dưới, còn _diva-ivi-launcher_ là hệ thống hệ thống bên trên gồm hệ điều hành và các chương trình.

Ngoài ra một số recipes-module quan trọng khác ở đây:

- Một số ứng dụng có làm: `ivilauncher`, `androidauto`
- Bên thứ ba gần như mình không nên động tay vào nhưng vì hết người nên vẫn phải chăm: `sc-tcc`, `diva-env`, `diva-service`, `cinemo`, `lk-tcc`, `diva-splash`, `linux-telechips`, `launcher-humax`, `bt-brcm`

Ngoài ra, nết muốm xem toàn bộ _recipes_ khả dụng có thể sử dụng lệnh sau:

```bash
bitbake-layers show-recipes
```

## Build Module

Các module có thể _build_ trực tiếp như sau:

```txt
bitbake <recipes-name> -c do_compile -f
```

## Troubleshot

