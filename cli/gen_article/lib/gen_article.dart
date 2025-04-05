import 'dart:io';
import 'package:path/path.dart' as path;

/// 記事を生成する関数
///
/// [title] 記事のタイトル
/// [date] 記事の日付（フォーマット: YYYY-MM-DD）
/// [emoji] 記事の絵文字
/// [type] 記事のタイプ（monthly/weekly/daily）
/// [topics] 記事のトピック（複数指定可）
/// [published] 公開状態
Future<void> generateArticle({
  required String title,
  required String date,
  required String emoji,
  required String type,
  required List<String> topics,
  required bool published,
}) async {
  // 日付の処理
  late final DateTime articleDate;
  try {
    articleDate = DateTime.parse(date);
  } catch (e) {
    print('エラー: 日付のフォーマットが無効です。YYYY-MM-DDの形式で指定してください。');
    rethrow;
  }

  // 年、月、日の取得
  final year = articleDate.year.toString();
  final month = articleDate.month.toString().padLeft(2, '0');
  final day = articleDate.day.toString().padLeft(2, '0');
  // プロジェクトのルートディレクトリを取得
  final projectRoot =
      const bool.fromEnvironment('dart.vm.product')
          ? Directory.current.parent
          : Directory.current.parent.parent;

  if (!await projectRoot.exists()) {
    throw Exception('プロジェクトのルートディレクトリが見つかりません');
  }

  // 出力ディレクトリのパスを作成
  final outputDir = path.join(projectRoot.path, 'articles', year, month);

  // ディレクトリが存在しない場合は作成
  final directory = Directory(outputDir);
  if (!await directory.exists()) {
    await directory.create(recursive: true);
  }

  // ファイル名の作成
  final fileName = '$year-$month-${day}_$title.md';

  // 出力ファイルのパス
  final outputPath = path.join(outputDir, fileName);

  // 出力ファイルのインスタンスを作成
  final outputFile = File(outputPath);

  // ファイルが既に存在する場合はエラーをスロー
  if (await outputFile.exists()) {
    throw Exception('ファイルが既に存在します: $outputPath');
  }

  // テンプレートファイルのパス
  final templatePath = path.join(projectRoot.path, 'templates', 'article_template.md');

  // テンプレートファイルの読み込み
  var template = await File(templatePath).readAsString();

  // テンプレートの置換
  template = template
      .replaceFirst('{{title}}', title)
      .replaceFirst('{{emoji}}', emoji)
      .replaceFirst('{{type}}', type)
      .replaceFirst('{{topics}}', topics.join(', '))
      .replaceFirst('{{published}}', published.toString());

  // ファイルの書き込み
  await outputFile.writeAsString(template);

  print('記事が作成されました: ${path.normalize(outputPath)}');
}
