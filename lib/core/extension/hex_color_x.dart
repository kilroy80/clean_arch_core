import 'package:flutter/painting.dart';

extension HexColorX on Color {
  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHexString({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

extension HexStringX on String {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  Color toHexColor() {
    var regx = RegExp(r'^#?(([0-9a-fA-F]{2}){3}|([0-9a-fA-F]){3})$');
    // if (!regx.hasMatch(this)) throw Exception('Exception : String value is not HexCode');
    if (!regx.hasMatch(this)) return const Color(0x00000000);

    final buffer = StringBuffer();
    if (length == 6 || length == 7) buffer.write('ff');
    buffer.write(replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}