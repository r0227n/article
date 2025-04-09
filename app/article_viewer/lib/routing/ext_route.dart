extension ExtString on String {
  /// 全角数字を半角数字に変換します。
  /// 数字以外の文字が含まれている場合、[FormatException]を[throw]します。
  String convertFullWidthToHalfWidth() {
    final buffer = StringBuffer();

    for (var i = 0; i < length; i++) {
      final char = this[i];
      final codeUnit = char.codeUnitAt(0);

      // 全角数字（0xFF10-0xFF19）を半角（0x30-0x39）に変換
      if (codeUnit >= 0xFF10 && codeUnit <= 0xFF19) {
        buffer.write(String.fromCharCode(codeUnit - 0xFEE0));
      } else if (codeUnit >= 0x30 && codeUnit <= 0x39) {
        // 既に半角数字の場合はそのまま
        buffer.write(char);
      } else {
        // 数字以外の文字が含まれている場合
        throw FormatException('$this: $char is not a number');
      }
    }

    return buffer.toString();
  }
}

extension ExtUri on Uri {
  /// 全角数字が含まれているかどうかを判定
  bool containsFullWidthDigits() {
    for (final segment in pathSegments) {
      for (var i = 0; i < segment.length; i++) {
        final codeUnit = segment.codeUnitAt(i);
        // 全角数字（０-９）の範囲チェック（0xFF10-0xFF19）
        if (codeUnit >= 0xFF10 && codeUnit <= 0xFF19) {
          return true;
        }
      }
    }
    return false;
  }

  /// 全角数字を半角数字に変換し、パスセグメントを返します。
  List<String> pathSegmentsFullWidthToHalfWidth() {
    return pathSegments.map((segment) {
      try {
        // segmentが全て数字の場合は半角数字に変換
        return segment.convertFullWidthToHalfWidth();
      } on FormatException {
        return segment;
      }
    }).toList();
  }
}
