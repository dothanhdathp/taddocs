# Download and Build

## Download aosp

Dự án này có ___nhiều model___ và có tới ___2 module___ cần phụ trách:
- Carlife App: __App__ tức là __Application__, tầng ứng dụng, sử dụng để giao tiếp với người dùng.
- Carlife Lib: Phần này nằm ở dưới, tầng framework, thư viện, service, sử dụng để can thiệp vào hệ thống và mở  các kết nối cho ứng dụng Carlife.

Để có được phần này bắt buộc phải clone __AOSP__ bằng lệnh sau:

```bash
repo init -u ssh://git.humaxdigital.com/git/HA_bak/product/hu/android/manifest -b p_dn8c
```

- `HA` đổi thành `HA_bak`
- Cần cả ___aosp___ là để build được `Carlife.jar`

Sử dụng lệnh này để dựng môi trường:

```bash
source build/envsetup.sh
```

## Carlife Lib

Sau đó vào trong thư mục này, đây là đường dẫn đến dự án.

```bash
cd vendor/humax/packages/services/CarLife
```

Dùng lệnh sau để _build_:

```bash
mm
```

Đầu ra được thư viện `.jar` nằm ở đây:

```bash
ls /home/${USER}/bhmc/dn8c/out/target/common/obj/JAVA_LIBRARIES/android.humaxdigital.carlife_intermediates/classes.jar
```

## Carlife App

- Ứng dụng là một phần khác, được đặt ở [đây](http://exg.humaxdigital.com:8080/#/admin/projects/Automotive/DN8C/Carlife).
- Đừng lo nếu không vào được vì liên kết cần tài khoản công ty và cần quản lý chấp nhận.
- Sau khi có tài khoản phải thêm `ssh-key` của bạn vào để có thể tải về dự án.
    - Nó nằm trong phần __Settings__ ở trong mục về tài khoản của bạn (có trên cùng bên phải).
    - Sau đó di chuyển đến thẻ __SSH Public Keys__ và thêm vào đó nội dung của `your_key.pub`

```bash
git clone ssh://<your_account>@exg.humaxdigital.com:29418/Automotive/DN8C/Carlife && scp -p -P 29418 <your_account>@exg.humaxdigital.com:hooks/commit-msg Carlife/.git/hooks/
```

Đây là một phần độc lập với phần còn lại của hệ thống và build bằng [Android Studio](ftware/AndroidStudio/software-android-studio-overview)

### Android Studio 4.1.3

!!! danger "Chú ý"
    Đây là chương trình đã rất cũ nên bắt buộc phải dựng bằng __Android Studio 4.1.3__ hoặc một số phiên bản gần.


```text
Android Studio 4.1.3
Build #AI-201.8743.12.41.7199119, built on March 11, 2021
Runtime version: 1.8.0_242-release-1644-b01 amd64
VM: OpenJDK 64-Bit Server VM by JetBrains s.r.o
Windows 10 10.0
GC: ParNew, ConcurrentMarkSweep
Memory: 1237M
Cores: 8
Registry: ide.new.welcome.screen.force=true, external.system.auto.import.disabled=true
Non-Bundled Plugins: com.intellij.plugins.macoskeymap, com.intellij.plugins.visualstudiokeymap, com.intellij.plugins.vscodekeymap, com.samdark.intellij-visual-studio-code-dark-plus
```

Lý do là vì có một phân đoạn ứng dụng cần dùng đến việc _overwrite_ lại một phần của _framework_, cái này là không được, vi phạm vào luật của google sau này thế nên trên các phiên bản __Android Studio__ sau không cho phép dùng nữa.

Các phiên bản khác đã có lần thử và cấu hình thành công để dựng nhưng khá là phiền phức, tốt nhất là nên dùng bản cũ đi.