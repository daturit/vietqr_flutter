import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

Widget generatorQR({
  required String vietQr,
  required AssetImage image,
  required double sizeQr,
  required double sizeEmbeddingImage,
}) {
  return QrImageView(
    data: vietQr,
    version: QrVersions.auto,
    size: sizeQr,
    embeddedImage: image,
    embeddedImageStyle: QrEmbeddedImageStyle(
      size: Size.square(sizeEmbeddingImage),
    ),
  );
}
