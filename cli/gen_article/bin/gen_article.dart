import 'dart:io';

import 'package:gen_article/gen_article.dart' as gen_article;
import 'package:args/args.dart';

void main(List<String> arguments) async {
  final parser =
      ArgParser()
        ..addOption('title', abbr: 't', help: '記事のタイトル')
        ..addOption('date', abbr: 'd', help: '記事の日付 (YYYY-MM-DD)')
        ..addFlag('help', abbr: 'h', help: 'ヘルプを表示', negatable: false);

  final results = parser.parse(arguments);

  if (results['help']) {
    print(parser.usage);
    exit(0);
  }

  final title = results['title'];
  final date = results['date'];

  await gen_article.generateArticle(title: title, date: date);
}
