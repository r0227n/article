import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:article_viewer/domain/models/article.dart';

class ArticleMetaRepository {
  Future<List<ArticleMeta>> getAll({required String path}) async {
    final manifest = await AssetManifest.loadFromAssetBundle(rootBundle);

    final metaFiles = manifest.listAssets().where((path) => path.startsWith(path)).toList();
    return Future.wait(
      metaFiles.map((path) async {
        final jsonString = await rootBundle.loadString(path);
        return ArticleMeta.fromJson(json.decode(jsonString));
      }),
    );
  }

  Future<ArticleMeta> getByYear({required int year, required String path}) async {
    try {
      final filePath = '$path/$year.json';
      final content = await rootBundle.loadString(filePath);
      return ArticleMeta.fromJson(json.decode(content));
    } catch (e) {
      throw Exception('Failed to load metadata for year $year: $e');
    }
  }
}
