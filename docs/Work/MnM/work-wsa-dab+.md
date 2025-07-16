# DAB+

## Yêu cầu

!!! note "Yêu cầu dự án"
    - Dự án này cần tạo thêm một ứng dụng DAB+ cho project WSA

- Phase 1:
    - [x] Clone source code
    - [x] Migrate code từ bên dự án __ZX__ sang.
    - [x] Dựng một ứng dụng DAB+ mới (không chức năng trên màn hình)
    - [x] Bắt đầu thêm phần `back-end`
    - [x] Cập nhật `diva-service`
- Phase 2:

## Phase 1

Phần này có __2 patch__ được để [ở đây](https://wiki.humaxdigital.com/display/~dtdat/WSA+Process) _(trang chính của mình trên wiki)_.

Sử dụng:

- `ivilauncher`
    ```bash
    cd $(PROJECT)/build-tcc8021-hmx/tmp/work/cortexa7-vfp-neon-telechips-linux-gnueabi/ivilauncher/1.0-r0/git
    git apply dab-ivilauncher-2.patch
    ```
- `diva-service`
    ```bash
    cd $(PROJECT)build-tcc8021-hmx/tmp/work/cortexa7-vfp-neon-telechips-linux-gnueabi/diva-service/1.0.0-r0/git
    git apply dab-diva-service.patch
    ```

### ivilauncher

#### Các tệp thêm mới

Các tệp thêm mới bao gồm:

```bash
new file:   common/inc/specDABData.h
new file:   hac/dab/HacDAB.cpp
new file:   hac/dab/HacDABList.cpp
new file:   hac/dab/HacDABSettings.cpp
new file:   hac/inc/HacDAB.h
new file:   hac/inc/HacDABList.h
new file:   hac/inc/HacDABSettings.h
new file:   model/dab/dab.pri
new file:   model/dab/dab.pro
new file:   model/dab/inc/DAB.h
new file:   model/dab/inc/DABAdapter.h
new file:   model/dab/inc/DABChannelManager.h
new file:   model/dab/inc/PiDABAdapter.h
new file:   model/dab/src/DABAdapter.cpp
new file:   model/dab/src/DABChannelManager.cpp
new file:   model/dab/src/PiDABAdapter.cpp
new file:   model/personalization/inc/DABDataType.h
new file:   view/resource/default/qml/HacDAB.qml
new file:   view/resource/default/qml/HacDABCategoryList.qml
new file:   view/resource/default/qml/HacDABList.qml
new file:   view/resource/default/qml/HacDABSettings.qml
new file:   view/resource/default/qml/HacDABSettingsAnnouncements.qml
new file:   view/resource/default/qml/HacDABSettingsManualTuning.qml
new file:   view/resource/default/qml/HacDABStationList.qml
new file:   view/resource/default/qml/HacPopupDABAnnouncement.qml
new file:   view/resource/default/qml/engineerDAB.qml
```

Mặc dù được thêm mới khá nhiều nhưng các tệp được thêm hầu như không có gì quan trọng. Trong đó chỉ cần chú ý đến tệp chính yếu là tệp `DABDataType.h`. Tệp này mới và không được kéo theo từ ___code gốc___. Tệp này bạn đầu là tệp `NVMData.h`, nhưng tệp này đã bị _chiếm dụng_ bởi bên WSA cho một số mục đích khác và nó đè lên tệp `NVMData.h` gốc như các ứng dụng khác. Do đó riêng DAB sẽ cần khai báo sang tệp riêng, chạy một số cấu hình riêng để thử nghiệm trước khi đưa vào tệp chung.

Các tệp sửa đổi
```bash
modified:   hac/core/inc/HAppComponent.h
modified:   hac/core/inc/HAppManager.h
modified:   hac/core/src/HAppManager.cpp
modified:   hac/hac.pro
modified:   hac/home/HacHome.cpp
modified:   hac/inc/HacHome.h
modified:   hac/inc/HacPopup.h
modified:   hac/inc/PopupDefine.h
modified:   hac/main/HacPopup.cpp
modified:   main/inc/UILog.h
modified:   main/main.pro
modified:   model/model.pri
modified:   model/model.pro
modified:   model/personalization/inc/PersonalizationAdapter.h
modified:   model/personalization/inc/PiPersonalizationAdapter.h
modified:   model/personalization/personalization.pro
modified:   model/personalization/src/PiPersonalizationAdapter.cpp
modified:   view/resource/default/qml/HacHome.qml
modified:   view/resource/default/qml/popup/HacPopup.qml
modified:   view/resource/qml.qrc
```

- Ok hãy chia thành hai phần rõ ràng, các tệp tạo __cấu hình build__ và các nguồn.
- Về cơ bản thì `DAB+`, theo tư duy của OOP và kiến trúc thì nó cũng khá độc lập. Tức là mọi sự thay đổi được thêm vào không có gì đáng nói, chủ yếu là dành cho việc thêm giá trị `enum` và `đối tượng build`.
- Ngoài ra còn phải thêm đối tượng `DAB+` vào danh sách build mới build chứ chỉ cần xúa đi build thành công nhương không có ứng dụng.

```patch
diff --git a/hac/core/src/HAppManager.cpp b/hac/core/src/HAppManager.cpp
index e32e8b6..9ebe828 100755
--- a/hac/core/src/HAppManager.cpp
+++ b/hac/core/src/HAppManager.cpp
@@ -301,6 +301,9 @@ void HAppManager::createHac(void)
     /* Radio */
     hacInfo.hac = &(HacRadio::getInstance());
     mHacInfoList.append(hacInfo);
+    /* DAB */
+    hacInfo.hac = &(HacDAB::getInstance());
+    mHacInfoList.append(hacInfo);
     /* Media */
     /** Media Home **/
     hacInfo.hac = &(HacMediaHome::getInstance());
```

Tiếp the tronh ___Home___, khai báo khởi tạo ứng dụng:

```patch
diff --git a/hac/core/src/HAppManager.cpp b/hac/core/src/HAppManager.cpp
index e32e8b6..9ebe828 100755
diff --git a/hac/home/HacHome.cpp b/hac/home/HacHome.cpp
index 9de8608..637c13a 100755
--- a/hac/home/HacHome.cpp
+++ b/hac/home/HacHome.cpp
@@ -219,8 +219,17 @@ void HacHome::initMenuModel(void)

     mFeatureCodeUtil = &(FeatureCodeUtil::getInstance());
     tmpMenuModel = new ListItemModel(this);
+
     tmpMenuModel->addItem(ListItem(QString("qrc:/qashqai/me_icon_main_radio_nor"), QString("qrc:/qashqai/me_icon_main_radio_pre"), QString("qrc:/qashqai/me_icon_main_radio_dis"), QString("STR_Radio"), Q_eMenuTypeRadio));
     tmpMenuModel->addItem(ListItem(QString("qrc:/qashqai/me_icon_main_music_nor"), QString("qrc:/qashqai/me_icon_main_music_pre"), QString("qrc:/qashqai/me_icon_main_music_dis"), QString("STR_USB_Music"), Q_eMenuTypeUSBMusic));
+
+    tmpMenuModel->addItem(ListItem(QString("qrc:/qashqai/me_icon_main_radio_nor"), QString("qrc:/qashqai/me_icon_main_radio_pre"), QString("qrc:/qashqai/me_icon_main_radio_dis"), QString("STR_Radio"), Q_eMenuTypeRadio));
+    // DAB Always ON
+    if(true) {
+        menu_num++;
+        tmpMenuModel->addItem(ListItem(QString("qrc:/home/home_icon_dab_nor"), QString("qrc:/home/home_icon_dab_dis"), QString("qrc:/home/home_icon_dab_pre"), QString("STR_DAB_Plus"), Q_eMenuTypeDAB));
+    }
+
     if (eFeatureBT_Enable == mFeatureCodeUtil->getBT())
     {
         tmpMenuModel->addItem(ListItem(QString("qrc:/qashqai/me_icon_main_btmusic_nor"), QString("qrc:/qashqai/me_icon_main_btmusic_pre"), QString("qrc:/qashqai/me_icon_main_btmusic_dis"), QString("STR_BT_AUDIO"), Q_eMenuTypeBTAudio));
```
