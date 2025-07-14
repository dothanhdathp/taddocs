# Cài đặt VSCode

## Cài đặt cho Windows

- Tải bản cài đặt tại trang chủ [link](https://code.visualstudio.com/download)
- Sau khi tải về, mở tệp cài đặt và cứ ___Next___ thôi.


## Cài đặt cho Linux

1. Dùng lệnh `dpkg --print-architecture` để biết hệ điều hành đang chạy ở core nào.
1. Lên trang chủ của Microsoft, tải về bản cài đặt. Nhớ tải đúng kiến trúc của `cpu-core`.
1. Dùng `wget` bản cài đặt về theo link, ví dụ sử dụng [link](https://vscode.download.prss.microsoft.com/dbazure/download/stable/e170252f762678dec6ca2cc69aba1570769a5d39/code_1.88.1-1712770538_arm64.deb) là cho Rasberry-Pi.
1. Cài đặt với `dpkg -i file_name.deb`

```
sudo snap install --classic code
```

## Các phiên bản cũ hơn

Lịch sử các phiên bản của __Visual Studio Code__ nằm ở [the Visual Studio Code Update pages](https://code.visualstudio.com/updatessss)

Nên cập nhật và tải xuống phiên bản mới nhất. Dưới đây là một số phiên bản `stable` có link tải trực tiếp nếu lười.

### Windows

=== "1.6x"

    - [1.65.2](https://vscode.download.prss.microsoft.com/dbazure/download/stable/c722ca6c7eed3d7987c0d5c3df5c45f6b15e77d1/VSCodeUserSetup-x64-1.65.2.exe)
    - [1.66.2](https://vscode.download.prss.microsoft.com/dbazure/download/stable/dfd34e8260c270da74b5c2d86d61aee4b6d56977/VSCodeUserSetup-x64-1.66.2.exe)
    - [1.67.2](https://vscode.download.prss.microsoft.com/dbazure/download/stable/c3511e6c69bb39013c4a4b7b9566ec1ca73fc4d5/VSCodeUserSetup-x64-1.67.2.exe)
    - [1.68.1](https://vscode.download.prss.microsoft.com/dbazure/download/stable/30d9c6cd9483b2cc586687151bcbcd635f373630/VSCodeUserSetup-x64-1.68.1.exe)
    - [1.69.2](https://vscode.download.prss.microsoft.com/dbazure/download/stable/3b889b090b5ad5793f524b5d1d39fda662b96a2a/VSCodeUserSetup-x64-1.69.2.exe)

=== "1.7x"

    - [1.70.2](https://vscode.download.prss.microsoft.com/dbazure/download/stable/e4503b30fc78200f846c62cf8091b76ff5547662/VSCodeUserSetup-x64-1.70.2.exe)
    - [1.71.2](https://vscode.download.prss.microsoft.com/dbazure/download/stable/74b1f979648cc44d385a2286793c226e611f59e7/VSCodeUserSetup-x64-1.71.2.exe)
    - [1.72.2](https://vscode.download.prss.microsoft.com/dbazure/download/stable/d045a5eda657f4d7b676dedbfa7aab8207f8a075/VSCodeUserSetup-x64-1.72.2.exe)
    - [1.73.1](https://vscode.download.prss.microsoft.com/dbazure/download/stable/6261075646f055b99068d3688932416f2346dd3b/VSCodeUserSetup-x64-1.73.1.exe)
    - [1.74.3](https://vscode.download.prss.microsoft.com/dbazure/download/stable/97dec172d3256f8ca4bfb2143f3f76b503ca0534/VSCodeUserSetup-x64-1.74.3.exe)
    - [1.75.1](https://vscode.download.prss.microsoft.com/dbazure/download/stable/441438abd1ac652551dbe4d408dfcec8a499b8bf/VSCodeUserSetup-x64-1.75.1.exe)
    - [1.76.2](https://vscode.download.prss.microsoft.com/dbazure/download/stable/ee2b180d582a7f601fa6ecfdad8d9fd269ab1884/VSCodeUserSetup-x64-1.76.2.exe)
    - [1.77.3](https://vscode.download.prss.microsoft.com/dbazure/download/stable/704ed70d4fd1c6bd6342c436f1ede30d1cff4710/VSCodeUserSetup-x64-1.77.3.exe)
    - [1.78.2](https://vscode.download.prss.microsoft.com/dbazure/download/stable/b3e4e68a0bc097f0ae7907b217c1119af9e03435/VSCodeUserSetup-x64-1.78.2.exe)
    - [1.79.2](https://vscode.download.prss.microsoft.com/dbazure/download/stable/695af097c7bd098fbf017ce3ac85e09bbc5dda06/VSCodeUserSetup-x64-1.79.2.exe)

=== "1.8x"

    - [1.80.2](https://vscode.download.prss.microsoft.com/dbazure/download/stable/2ccd690cbff1569e4a83d7c43d45101f817401dc/VSCodeUserSetup-x64-1.80.2.exe)
    - [1.81.1](https://vscode.download.prss.microsoft.com/dbazure/download/stable/6c3e3dba23e8fadc360aed75ce363ba185c49794/VSCodeUserSetup-x64-1.81.1.exe)
    - [1.82.3](https://vscode.download.prss.microsoft.com/dbazure/download/stable/fdb98833154679dbaa7af67a5a29fe19e55c2b73/VSCodeUserSetup-x64-1.82.3.exe)
    - [1.83.1](https://vscode.download.prss.microsoft.com/dbazure/download/stable/f1b07bd25dfad64b0167beb15359ae573aecd2cc/VSCodeUserSetup-x64-1.83.1.exe)
    - [1.84.2](https://vscode.download.prss.microsoft.com/dbazure/download/stable/1a5daa3a0231a0fbba4f14db7ec463cf99d7768e/VSCodeUserSetup-x64-1.84.2.exe)
    - [1.85.2](https://vscode.download.prss.microsoft.com/dbazure/download/stable/8b3775030ed1a69b13e4f4c628c612102e30a681/VSCodeUserSetup-x64-1.85.2.exe)
    - [1.86.0](https://vscode.download.prss.microsoft.com/dbazure/download/stable/05047486b6df5eb8d44b2ecd70ea3bdf775fd937/VSCodeUserSetup-x64-1.86.0.exe)
    - [1.89.1](https://vscode.download.prss.microsoft.com/dbazure/download/stable/dc96b837cf6bb4af9cd736aa3af08cf8279f7685/VSCodeUserSetup-x64-1.89.1.exe)

### Linux
_Chưa làm_