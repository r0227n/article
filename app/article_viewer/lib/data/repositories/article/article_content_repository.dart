import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/models/article.dart';
import '../../services/asset_loader_helper.dart';

part 'article_content_repository.g.dart';

const _assetsArticlesPath = String.fromEnvironment(
  'ASSET_ARTICLES_PATH',
  defaultValue: 'assets/articles',
);

@riverpod
ArticleContentRepository articleContentRepository(Ref ref) {
  return const ArticleContentRepository();
}

class ArticleContentRepository {
  const ArticleContentRepository();

  Future<List<String>> getAll({required ArticleMeta meta}) async {
    final contentFiles = meta.articles.map((e) => e.filePath).toList();

    return Future.wait(
      contentFiles.map((e) async {
        final content = await AssetLoaderHelper.loadFile(e);
        return content;
      }),
    );
  }

  Future<String> getByPath({required String path}) async {
    if (!path.endsWith('.md')) {
      throw ArgumentError('$path is not a markdown file');
    }

    final content = await AssetLoaderHelper.loadFile(
      '$_assetsArticlesPath/$path',
    );
    return content;
  }
}
