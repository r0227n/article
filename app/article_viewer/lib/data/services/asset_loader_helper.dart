import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class AssetLoaderHelper {
  /// GitHub Pagesのリポジトリ名を含むベースパスを取得
  static String get baseWebPath {
    if (!kIsWeb) return '';

    // 例：https://username.github.io/repo-name/ の場合
    final uri = Uri.base;
    final pathSegments = uri.pathSegments.where((s) => s.isNotEmpty).toList();

    if (pathSegments.isEmpty) return '/';
    // リポジトリ名を最初のセグメントとして使用
    return '/${pathSegments[0]}/';
  }

  /// ファイルをロードする汎用メソッド
  static Future<String> loadFile(String relativePath) async {
    if (kIsWeb && !Uri.base.host.contains('localhost')) {
      // Webの場合、まずHTTPでロードを試みる
      final url = Uri.base.host + baseWebPath + relativePath;
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return response.body;
      }
    }

    // Webでないか、HTTPロードに失敗した場合はassetからロード
    return await rootBundle.loadString(relativePath);
  }
}
