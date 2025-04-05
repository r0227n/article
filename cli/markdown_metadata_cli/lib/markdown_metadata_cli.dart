import 'dart:io';
import 'io/year_index.dart';
import 'models/article_metadata.dart';

Future<void> processMarkdownFiles(List<String> filePaths, String outputDir) async {
  // 記事のメタデータを格納する変数
  final List<ArticleMetadata> metadatas = [];

  stdout.writeln('メタデータを抽出中...');

  await Future.wait(
    filePaths.map((filePath) async {
      final file = File(filePath);
      if (!await file.exists()) {
        stderr.writeln('警告: ファイルが見つかりません: $filePath');
        exit(1);
      }

      try {
        final articleMetadata = ArticleMetadata.fromFilePath(filePath);

        // 公開された記事のみ追加
        if (articleMetadata.published) {
          metadatas.add(articleMetadata);
        }
      } catch (e) {
        stderr.writeln('エラー: ファイル処理中に問題が発生しました: $filePath');
        stderr.writeln(e);
        rethrow;
      }
    }),
  );

  final yearIndex = YearIndex();
  await yearIndex.save(metadatas: metadatas, path: outputDir);

  stdout.writeln('完了! メタデータが $outputDir に生成されました');
}
