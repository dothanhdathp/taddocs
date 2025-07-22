# EVO Note

## CAN Signal

| Message              | Effect              | Command                                                                                                                                                    |
| :------------------- | :------------------ | :--------------------------------------------------------------------------------------------------------------------------------------------------------- |
| BCM_CANHS_R_04       | Wake up HU          | BCM_WakeUpSleepCommand:3<br>VehicleStateExtented:7                                                                                                         |
| BRAKE_CANHS_R_01     | Set Speed           | VehicleSpeed                                                                                                                                               |
| MMI_UPA_CANLSFT_R_01 | Set pram for UPA    | FrontParkAssistState<br>RearParkAssistState<br>UPA_SoundRecurrenceType<br>UPA_SoundRecurrencePeriod<br>__UPA_SoundObstacleZone__<br>__UPA_SoundErrorBeep__ |
| BCM_CANHS_R_05       | Set RearGearEngaged | RearGearEngaged                                                                                                                                            |

## ADB

- Bật/Tắt adb USB
    ```bash
    settings put global adb_enabled 0
    settings put global adb_enabled 1
    ```
- __Remount__ hệ thống cho phép viết lại
    ```bash
    adb root
    adb remount
    ```
- Bật tính năng _debug_ qua _ethernet_
    ```bash
    su
    setprop service.adb.tcp.port 5555
    stop adbd
    start adbd
    ```
- Thay đổi quyền cho phép lưu tệp _debug_ âm thanh
    ```bash
    su 0 chown root:root /data/
    su 0 chown root:root /data/local/
    su 0 chown root:root /data/local/tmp/
    su 0 chmod 777 /data/
    su 0 chmod 777 /data/local/
    su 0 chmod 777 /data/local/tmp/
    su 0 setenforce 0
    ```
- Nếu bị đen màn hình thì dùng lệnh nàu:
    ```bash
    su
    echo 70 > /sys/devices/platform/panel_dp@0/pwm_duty
    ```
- Check ip cho đến khi thành công
    ```bash
    while [ -z "$(ip r)" ]; do sleep 2; done; ip r;
    ```

## audio.primary.tcc807x

> - Director:
>    ```bash
>    ~/evo/maincore/out/target/product/aevo_n3000rv_r/obj/SHARED_LIBRARIES/audio.primary.tcc807x_intermediates/audio.primary.tcc807x.so /vendor/lib64/hw/
>    ```
> - Device Target:
>    ```bash
>    /vendor/lib64/hw/audio.primary.tcc807x.so
>    ```
> - Output Build:
>    ```bash
>    ~/evo/maincore/out/target/product/aevo_n3000rv_r/obj/SHARED_LIBRARIES/audio.primary.tcc807x_intermediates/audio.primary.tcc807x.so /vendor/lib64/hw/
>    ```

- __Make__:
    ```bash
    make audio.primary.tcc807x
    ```
- __Load__:
    ```bash
    adb push /home/dtdat/workstation/evo/maincore/out/target/product/aevo_n3000rv_r/obj/SHARED_LIBRARIES/audio.primary.tcc807x_intermediates/audio.primary.tcc807x.so /vendor/lib64/hw/
    ```
- > Specific on __tommy__ account
    ```bash
    adb push /home/tommy/workspace/evo/maincore/out/target/product/aevo_n3000rv_r/obj/SHARED_LIBRARIES/audio.primary.tcc807x_intermediates/audio.primary.tcc807x.so /vendor/lib64/hw/
    ```
- Reload:
    ```bash
    ps -A | grep "audioserver" | awk '{print $2}' | xargs su 0 kill -9
    ```
