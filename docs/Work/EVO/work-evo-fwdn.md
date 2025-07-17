# FWDN

## Cài đặt driver

Tải về driver ở link dưới đây:

- [Download CP210x Universal Windows Driver](https://www.silabs.com/developers/usb-to-uart-bridge-vcp-drivers?tab=downloads)
- Tải về tệp __CP210x_VCP_Windows.zip__
- Nên cài đặt ở quyền __administrator__ bằng cách chuột phải vào tệp tải về và chọn __Run as Administrator__

## Tool

- __Diractory__: Tool fwdn của dự án nằm ở thư mục `vendor/telechips/tools/FWDN/`
    - Tệp binary nằm ở trong thư mục `vendor/telechips/tools/FWDN/out`
- __Version__: Kiểm tra phiên bản có thể dùng lệnh `fwdn --help`
    - Ở đây thường dùng là bản: `FWDN V8 v1.5.0`

## FWDN Script

Mỗi bản sẽ đi kèm 2 thư mục tên có chứa `CPU` và `VCP`. `CPU` là tệp __FWDN__ dành cho hệ thống Android, còn `VCP` là cho Hệ thống __Micom__ _(chạy RTOS ở subcore)_.

Cấu trúc tệp để thu gọn như thế này:

```txt
.
├── 02_CPU_FWDN
│   ├── prebuilt
│   │   └── ...
│   ├── tools
│   │   └── ...
│   ├── ...
│   └── update_fwdn_image.bat
└── 01_VCP_FWDN
    ├── ...
    └── update_pflash_image.bat
```

Trong đó có rất nhiều nhưng chỉ có 2 tệp đáng chú ý:

- `update_fwdn_image.bat`: FWDN cho Android
- `update_pflash_image.bat`: FWDN cho Micom

Nội dung tệp đại loại như sau:

??? note "Xem update_fwdn_image.bat"
    ```batch
    @ECHO OFF

    rem set ROM_PATH=..\..\..\build\output\
    set ROM_PATH=.\

    @echo on
    .\fwdn.exe --fwdn %ROM_PATH%tcc807x_fwdn.json
    .\fwdn.exe --storage emmc --low-format 
    .\fwdn.exe -w %ROM_PATH%tcc807x_boot.json
    .\fwdn.exe -w %ROM_PATH%tools\mktcimg\aevo_n3000rv_r-16g.fai --storage emmc --area user rem --no-crc
    @pause
    ```

??? note "Xem update_pflash_image.bat"
    ```batch
    @ECHO OFF

    rem set ROM_PATH=..\..\..\build\output\
    set ROM_PATH=.\

    fwdn.exe  --write %ROM_PATH%dv_AVTOVAZ.EVO.RUS.V0040.250523.MICOM.rom --fwdn .\vcp_fwdn.rom
    @pause
    ```

Dựa vào nội dung dễ thấy để FWDN bản của mình thì _nên sử dụng lại build tool_

- Sau `quick_rebuild`, chạy lệnh `build_fai` để tạo tệp `aevo_n3000rv_r-16g.fai`
- Thay thế tệp `aevo_n3000rv_r-16g.fai` trong thư mục `tools\mktcimg\` bằng tệp `aevo_n3000rv_r-16g.fai` tự build.
- Chạy ___script___ _update_fwdn_image.bat_