import 'dart:convert';
import 'package:article_models/article_models.dart';

abstract class IndexIo {
  /// ファイル作成
  Future<void> create({
    required List<ArticleMetadata> metadatas,
    required String path,
  });

  /// ファイル更新
  Future<void> update({
    required List<ArticleMetadata> metadatas,
    required String path,
  });

  /// ファイル保存
  Future<void> save({
    required List<ArticleMetadata> metadatas,
    required String path,
  });
}

mixin IndexIoMixin on IndexIo {
  String formatJson(Map<String, dynamic> json) {
    return const JsonEncoder.withIndent('  ').convert(json);
  }
}
