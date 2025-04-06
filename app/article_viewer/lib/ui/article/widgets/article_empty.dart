import 'package:article_viewer/ui/core/ui/home_back_button.dart';
import 'package:flutter/material.dart';

class ArticleEmpty extends StatelessWidget {
  const ArticleEmpty({super.key, required this.year, this.month});

  final int? year;
  final int? month;

  @override
  Widget build(BuildContext context) {
    final title = switch ((year, month)) {
      (int year, null) => '$year年の記事は見つかりませんでした',
      (int year, int month) => '$year年$month月の記事は見つかりませんでした',
      _ => '記事は見つかりませんでした',
    };

    return Center(
      child: Column(
        spacing: 16.0,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.article_outlined, size: 80, color: Colors.grey),
          Text(title, style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center),
          Text(
            'ホーム画面に戻ってください',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
            textAlign: TextAlign.center,
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 16.0), child: HomeBackButton()),
        ],
      ),
    );
  }
}
