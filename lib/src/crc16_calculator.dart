class CRC16Calculator {
  static String calculate(String input) {
    const int polynomial = 0x1021; // CRC-CCITT polynomial
    int crc = 0xFFFF; // Initial CRC value

    for (final codeUnit in input.codeUnits) {
      crc ^= codeUnit << 8; // XOR the top byte
      for (int i = 0; i < 8; i++) {
        crc = (crc & 0x8000) != 0 ? (crc << 1) ^ polynomial : (crc << 1);
      }
    }

    return (crc & 0xFFFF).toRadixString(16).toUpperCase().padLeft(4, '0');
  }
}
