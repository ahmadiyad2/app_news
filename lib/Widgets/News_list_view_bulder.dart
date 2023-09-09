import 'package:app_news/Models/article_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../services/news_services.dart';
import 'news_ListView.dart';

class NewsListViewBulider extends StatefulWidget {
   NewsListViewBulider({super.key , required  this.category});

  final String category ;
  @override
  State<NewsListViewBulider> createState() => _NewsListViewBuliderState();
}

class _NewsListViewBuliderState extends State<NewsListViewBulider> {
    var future ;
       @override
  void initState() {
    super.initState();
    future = NewsSetvices(Dio()).getNewsTopHedLine(category: widget.category );
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future:  future ,
        builder: (context, Snapshot) {
          if (Snapshot.hasData) {
            return NewsListView(
              article: Snapshot.data!
            );
          } else if (Snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: errorMessage(),
            );
          } else {
            return const SliverToBoxAdapter(
                child: Center(
              child: CircularProgressIndicator(),
            ));
          }
        });
  }
}

class errorMessage extends StatelessWidget {
  const errorMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('oops there was an error , try later  ');
  }
}
