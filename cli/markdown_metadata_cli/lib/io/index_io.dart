import '../models/article_metadata.dart';

abstract class IndexIo {
  /// ファイル作成
  Future<void> create({required List<ArticleMetadata> metadatas, required String path});

  /// ファイル更新
  Future<void> update({required List<ArticleMetadata> metadatas, required String path});

  /// ファイル保存
  Future<void> save({required List<ArticleMetadata> metadatas, required String path});
}
