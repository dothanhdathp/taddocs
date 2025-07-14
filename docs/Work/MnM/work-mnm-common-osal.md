# OSAL (OS Abstraction Layer)

## OSAL là

Theo [wikipedia](https://en.wikipedia.org/wiki/Operating_system_abstraction_layer), __OSAL__ là viết tắt của ___Operating system abstraction layer___, dịch ra nghĩa là ___lớp trừu tượng hóa hệ điều hành___.

Về mặt chứng năng, nó đóng vai trò trừu tượng như một hệ điều hành giao tiếp với các phần cứng bên dưới thông qua API, thực hiện lập lịch vào điều khiển luồng dựa trên mức độ ưu tiên của các tiến trình.

## Tại sao sử dụng OSAL?

- __Tính di động__: OSAL cho phép dễ dàng chuyển đổi giữa các hệ điều hành khác nhau mà không cần thay đổi nhiều mã nguồn ứng dụng.
- __Khả năng bảo trì__: Mã nguồn trở nên sạch sẽ và dễ bảo trì hơn vì nó không bị gắn chặt với một hệ điều hành cụ thể.
- __Tăng tốc độ phát triển__: Việc sử dụng OSAL có thể giúp giảm thời gian phát triển và gỡ lỗi vì các nhà phát triển có thể tập trung vào logic ứng dụng thay vì các chi tiết cụ thể của hệ điều hành.
- __Tái sử dụng mã__: Các thành phần OSAL có thể được tái sử dụng trong các dự án khác nhau, giúp tiết kiệm thời gian và công sức.

## Tiến trình

```puml
participant "AppMain\n(ivi)" as A
participant "pi_init\n(diva-service)" as PI
participant "srv_mcp\n(diva-service)" as SRV

A -> PI : PI_Init
PI -> PI : SRV_SYS_RegisterExceptionCallback
PI -> PI : OSAL_Init
PI -> PI : _pi_init_initData
PI -> SRV : SRV_MCP_Init
PI -> SRV : SRV_PM_Init
PI -> SRV : SRV_KEY_Init
PI --> SRV : //another module init//
PI -> PI : CMD_Init
PI -> PI : CMD_PI_Init
```