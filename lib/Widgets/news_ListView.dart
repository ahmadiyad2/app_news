import 'package:app_news/Models/article_model.dart';

import 'package:flutter/material.dart';

import 'news_Tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> article;

  const NewsListView({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: article.length,
            (context, index) {
      return NewsTile(
        articleModel: article[index],
      );
    }));
  }
}
