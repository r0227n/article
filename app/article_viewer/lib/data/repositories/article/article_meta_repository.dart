import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:article_viewer/domain/models/article.dart';

part 'article_meta_repository.g.dart';

@riverpod
ArticleMetaRepository articleMetaRepository(Ref ref) {
  return ArticleMetaRepository();
}

class ArticleMetaRepository {
  const ArticleMetaRepository({this.assetsMetaPath = 'assets/meta'});

  final String assetsMetaPath;

  Future<List<ArticleMeta>> getAll() async {
    final manifest = await AssetManifest.loadFromAssetBundle(rootBundle);

    final metaFiles = manifest.listAssets().where((e) => e.startsWith(assetsMetaPath)).toList();
    return Future.wait(
      metaFiles.map((path) async {
        final jsonString = await rootBundle.loadString(path);
        return ArticleMeta.fromJson(json.decode(jsonString));
      }),
    );
  }

  Future<ArticleMeta> getByYear({required int year}) async {
    try {
      final filePath = '$assetsMetaPath/$year.json';
      final content = await rootBundle.loadString(filePath);
      return ArticleMeta.fromJson(json.decode(content));
    } catch (e) {
      throw Exception('Failed to load metadata for year $year: $e');
    }
  }
}
