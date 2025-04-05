import 'dart:io';

import 'package:gen_article/gen_article.dart' as gen_article;
import 'package:args/args.dart';

void main(List<String> arguments) async {
  final parser =
      ArgParser()
        ..addOption('title', abbr: 't', help: '記事のタイトル')
        ..addOption('date', abbr: 'd', help: '記事の日付 (YYYY-MM-DD)')
        ..addOption('emoji', abbr: 'e', help: '記事の絵文字')
        ..addOption('type', help: '記事のタイプ (monthly/weekly/daily)')
        ..addOption('topics', abbr: 'p', help: '記事のトピック（カンマ区切りで複数指定可: Flutter,Dart）')
        ..addFlag('published', help: '公開状態（true/false）', defaultsTo: false)
        ..addFlag('help', abbr: 'h', help: 'ヘルプを表示', negatable: false);

  final results = parser.parse(arguments);

  if (results['help']) {
    print(parser.usage);
    exit(0);
  }

  final title = results['title'];
  final date = results['date'];
  final emoji = results['emoji'];
  final type = results['type'];
  final topics =
      results['topics'] != null && (results['topics'] as String).isNotEmpty
          ? (results['topics'] as String).split(',').map((e) => e.trim()).toList()
          : null;
  final published = results['published'] as bool;

  await gen_article.generateArticle(
    title: title,
    date: date,
    emoji: emoji,
    type: type,
    topics: topics,
    published: published,
  );
}
