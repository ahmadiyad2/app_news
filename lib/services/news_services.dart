import 'package:dio/dio.dart';

import '../Models/article_model.dart';

class NewsSetvices {
  final Dio dio;

  NewsSetvices(this.dio);

  Future<List<ArticleModel>> getNewsTopHedLine(
      {required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=78135008495a4a4da016ad99401e1024&category=$category');
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          titel: article['title'],
          subTitel: article['description'],
          url: article['url'],

          
        );
        articlesList.add(articleModel);

        print(article['url']);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
