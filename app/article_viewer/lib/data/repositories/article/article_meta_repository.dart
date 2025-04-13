import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:article_models/article_models.dart';
import 'package:article_viewer/domain/models/article.dart';
import '../../services/asset_loader_helper.dart';

part 'article_meta_repository.g.dart';

@riverpod
ArticleMetaRepository articleMetaRepository(Ref ref) {
  return ArticleMetaRepository();
}

class ArticleMetaRepository {
  const ArticleMetaRepository({
    this.assetsMetaPath = const String.fromEnvironment(
      'ASSET_META_PATH',
      defaultValue: 'assets/meta',
    ),
  });

  final String assetsMetaPath;

  Future<List<ArticleMeta>> getAll() async {
    final index = await AssetLoaderHelper.loadFile(
      '$assetsMetaPath/index.json',
    );
    final indexFile = IndexFile.fromJson(json.decode(index));
    final yearIndexPaths = indexFile.indexes.map((e) => e.path);

    return Future.wait(
      yearIndexPaths.map((path) async {
        final jsonString = await AssetLoaderHelper.loadFile(
          '$assetsMetaPath/$path',
        );
        return ArticleMeta.fromJson(json.decode(jsonString));
      }).toList(),
    );
  }

  Future<ArticleMeta> getByYear({required int year}) async {
    try {
      final filePath = '$assetsMetaPath/$year.json';
      final content = await AssetLoaderHelper.loadFile(filePath);
      return ArticleMeta.fromJson(json.decode(content));
    } catch (e) {
      throw Exception('Failed to load metadata for year $year: $e');
    }
  }
}
