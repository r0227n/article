import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../domain/models/article.dart';

class ArticleListTile extends StatelessWidget {
  const ArticleListTile(this.article, {super.key, required this.onTap});

  final Article article;

  /// Called when the user taps this part of the material.
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 8.0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 12.0,
                children: [
                  Text(article.emoji, style: const TextStyle(fontSize: 24.0)),
                  Expanded(
                    child: Text(
                      article.title,
                      style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Text(
                DateFormat('yyyy/MM/dd').format(article.date),
                style: TextStyle(color: Theme.of(context).textTheme.bodySmall?.color),
              ),
              Wrap(
                spacing: 4.0,
                runSpacing: 4.0,
                children:
                    article.topics
                        .map(
                          (e) => Chip(
                            label: Text(e),
                            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                            labelStyle: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimaryContainer,
                            ),
                          ),
                        )
                        .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
