# vietqr_flutter

## Getting Started

Basic usage, get qrCode:

```dart
  String qrCode = VietQRGenerator.generate(
    accountNumber: 'KFI9482626',
    bankCode: '0006970441',
  );
```

You can generator QR image like so:

```dart
generatorQR(
  vietQr: code,
  image: const AssetImage('assets/images/bank.png'),
  sizeQr: 300,
  sizeEmbeddingImage: 50);
```

## Demo QR:

<p>
<img src = "https://github.com/daturit/vietqr_flutter/blob/master/demoQr.png?raw=true" align = "center" height = "550px"/>
</p>

## Commemoration

This package was originally authored by
[Anh Tuan](https://github.com/daturit).