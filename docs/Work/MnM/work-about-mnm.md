# Mahindra and Mahindra

Chuỗi HU của __Mahindra__ là chuỗi thiết bị đầu tiên mình làm việc ở công ty __Humax__ _(Hiện giờ đã đổi thành Marusys)_.

## MnM
### Gói phụ thuộc chung

Các model này hầu như đều giống nhau và các gói cần thiết để cài đặt đều có dạng như này:

```bash
sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat cpio python python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev pylint3 xterm qt4-dev-tools
sudo apt-get install make xsltproc docbook-utils fop dblatex xmlto
sudo apt-get install make perl gawk build-essential libncurses5-dev texinfo bison flex autoconf
sudo apt-get install ia32-libs gcc-multilib lib32z1 lib32ncurses5-dev
sudo apt-get install qtscript-tools
```

Hoặc hợp lệnh dưới này để bỏ qua chuyện hỏi của `[Y/n]`

```bash
for i in {gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat cpio python python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev pylint3 xterm qt4-dev-tools make xsltproc docbook-utils fop dblatex xmlto perl gawk build-essential libncurses5-dev texinfo bison flex autoconf ia32-libs gcc-multilib lib32z1 lib32ncurses5-dev qtscript-tools};\
do sudo echo $i;\
done;
```
Sau đó chạy đến lệnh:
```bash
sudo dpkg-reconfigure dash
```

Chọn <mark>NO</mark>

### Các nhánh trên MnM

Xem tất cả các nhánh của __MnM__ ở link này: http://git.humaxdigital.com/gitweb/?p=HA_bak/product/hu/linux/manifest.git.

Các nhánh tồn tại bao gồm:

| Dự án    | branch                                          | manifest |
| :------- | :---------------------------------------------- | :------- |
| W501     | __p_W501-N3000D-r0.1_MnM_main__                 |          |
| S210     | __p_S210-N5000D-r0.1_MnM_main__                 |          |
| Z101     | __p_Z101-L3000D-r0.1_MnM_Main__                 |          |
| S201     | __p_S201-N3000D-r1.0_MnM_main__                 |          |
|          | __p_W501-N3000D-r0.1_MnM_v1xxxx__               |          |
| S201_dcr | __p_S201-N3000D-r1.0_MnM_dcr__                  |          |
|          | __default__                                     |          |
|          | __p_WP33-L3200L-r0.1_Qashqai_main__             |          |
|          | __p_WP33-L3000L-r0.1_Qashqai_main__             |          |
|          | __p_WP33-L3001L-r0.1_Qashqai_main__             |          |
|          | __p_WPZE-L3000L-r0.1_Qashqai_main__             |          |
|          | __p_WP33-L3200H-r0.1_Qashqai_main__             |          |
|          | __p_ZX-N3000H-r0.1_zylux_main__                 |          |
|          | __d_WP33-L3000L-r0.1_Qashqai_Qt5.12-migration__ |          |
|          | __p_POAM-L3000G-r0.1_HUMAX_main__               |          |
|          | __d_S201-N3000D_MnM_gtsystem-release__          |          |
| WSA      | __p_WSA-L3000M-S-r0.1_Nissan_main__             |          |

Từng nhánh ở trên đại diện cho một thiết bị. Thường mình chỉ sử dụng có ___4 model___ chính là __W501__, __S201__, __Z101__, __S210__ là _maintain_ chính.


Giờ vào từng _model_.

### Git

Cần có yêu cầu quyền __git__ để có thể tải về các gói cần thiết, nó bao gồm.

```txt
#git-proxy
Host git-proxy
User olite
Hostname 192.168.145.47
Port 22
IdentityFile ~/.ssh/mxhoa
```

Tải về git của `mxhoa` ở [đây](https://wiki.humaxdigital.com/pages/viewpageattachments.action?pageId=74360984). Dù sao nó cũng không quan trọng nên mình sẽ không đưa nội dung nó lên đây.

```txt
#default account
Host git.humaxdigital.com
Hostname 10.250.0.94
User ntdung2
IdentityFile ~/.ssh/ntdung2
```
### Commond Clone

```bash
repo init -u ssh://git-proxy/git/HA/product/hu/linux/manifest.git -b <branch>
```
## Maintain model
- [Z101](./work-z101-overview.md)
- [S210](./work-s210-overview.md)
- [S201](./work-s201-overview.md)
- [W501](./work-w501-overview.md)
- [WSA](./work-wsa-overview.md)
- [ZX](./work-zx-overview.md)
