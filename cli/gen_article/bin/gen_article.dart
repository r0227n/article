import 'package:gen_article/gen_article.dart' as gen_article;

void main(List<String> arguments) async {
  String? title;
  String? date;

  // 引数の処理
  if (arguments.isNotEmpty) {
    title = arguments[0];
  }

  if (arguments.length > 1) {
    date = arguments[1];
  }

  await gen_article.generateArticle(title: title, date: date);
}
