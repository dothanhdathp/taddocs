# [Windows] Service Tag and Manufacture

## Manufacturer

```bash
wmic baseboard get product, manufacturer
```

## Serialnumber

Số này chính là __Service Tag__ sử dụng để tải về ___driver___ hỗ trợ cho máy trên trang chủ của nhà sản xuất.

```bash
wmic bios get serialnumber
```