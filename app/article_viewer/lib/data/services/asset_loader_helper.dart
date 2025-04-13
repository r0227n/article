import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class AssetLoaderHelper {
  const AssetLoaderHelper._();

  /// ファイルをロードする汎用メソッド
  static Future<String> loadFile(String relativePath) async {
    if (kIsWeb && !Uri.base.host.contains('localhost')) {
      // Webの場合、まずHTTPでロードを試みる

      final encodedPath = Uri.encodeFull(relativePath);
      final response = await http.get(Uri.https(Uri.base.host, encodedPath));
      if (response.statusCode == 200) {
        return response.body;
      }
    }

    // Webでないか、HTTPロードに失敗した場合はassetからロード
    return await rootBundle.loadString(relativePath);
  }
}
