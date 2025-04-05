import 'dart:io';
import 'package:path/path.dart' as path;

/// 記事を生成する関数
///
/// [title] 記事のタイトル（オプション）
/// [date] 記事の日付（オプション、フォーマット: YYYY-MM-DD）
/// [emoji] 記事の絵文字（オプション）
/// [type] 記事のタイプ（オプション、monthly/weekly/daily）
/// [topics] 記事のトピック（オプション、複数指定可）
/// [published] 公開状態（オプション、デフォルトはfalse）
Future<void> generateArticle({
  String? title,
  String? date,
  String? emoji,
  String? type,
  List<String>? topics,
  bool? published,
}) async {
  // 日付の処理
  DateTime articleDate;
  if (date != null) {
    try {
      articleDate = DateTime.parse(date);
    } catch (e) {
      print('エラー: 日付のフォーマットが無効です。YYYY-MM-DDの形式で指定してください。');
      exit(1);
    }
  } else {
    articleDate = DateTime.now();
  }

  // 年、月、日の取得
  final year = articleDate.year.toString();
  final month = articleDate.month.toString().padLeft(2, '0');
  final day = articleDate.day.toString().padLeft(2, '0');

  // 出力ディレクトリのパスを作成
  final outputDir = path.join(Directory.current.path, '..', '..', 'articles', year, month);

  // ディレクトリが存在しない場合は作成
  final directory = Directory(outputDir);
  if (!await directory.exists()) {
    await directory.create(recursive: true);
  }

  // ファイル名の作成
  final fileName = '$year-$month-$day.md';

  // 出力ファイルのパス
  final outputPath = path.join(outputDir, fileName);

  // ファイルが既に存在する場合はエラーをスロー
  if (await File(outputPath).exists()) {
    throw Exception('ファイルが既に存在します: $outputPath');
  }

  // テンプレートファイルのパス
  final templatePath = path.join(Directory.current.path, '..', 'templates', 'article_template.md');

  try {
    // テンプレートファイルの読み込み
    var template = await File(templatePath).readAsString();

    // タイトルを設定（指定がある場合のみ）
    if (title != null) {
      template = template.replaceFirst('title: ""', 'title: "$title"');
    }

    // 絵文字を設定（指定がある場合のみ）
    if (emoji != null) {
      template = template.replaceFirst('emoji: "📓"', 'emoji: "$emoji"');
    }

    // タイプを設定（指定がある場合のみ）
    if (type != null) {
      template = template.replaceFirst('type: "weekly"', 'type: "$type"');
    }

    // トピックを設定（指定がある場合のみ）
    if (topics != null && topics.isNotEmpty) {
      final topicsList = topics.map((t) => '"$t"').join(', ');
      template = template.replaceFirst('topics: []', 'topics: [$topicsList]');
    }

    // 公開状態を設定（指定がある場合のみ）
    if (published != null) {
      template = template.replaceFirst('published: false', 'published: $published');
    }

    // ファイルの書き込み
    await File(outputPath).writeAsString(template);

    print('記事が作成されました: $outputPath');
  } catch (e) {
    print('エラー: $e');
    exit(1);
  }
}
