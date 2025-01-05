import 'package:dio/dio.dart';
import 'package:news_app/model/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  final String apiKey = 'Your API Key';

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      final Response response = await dio.get('https://newsdata.io/api/1/latest?apikey=pub_$apiKey&country=eg&language=ar&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['results'];

      List<ArticleModel> articleList = [];

      for (var article in articles) {
        if (article['image_url'] == null || article['title'] == null || article['description'] == null) {
          continue;
        } else {
          ArticleModel articleModel = ArticleModel.fromJson(article);
          articleList.add(articleModel);
        }
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }

  // void getSportsNews() async {
  //   final Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=$apiKey&category=sports');
  // }
}
//if i don't know the structure of the json data i can use the below code
    //dynamic jsonData = response.data;
//if i know the structure of the json data i can use the below code
    //List<Map<String, dynamic>> articles = jsonData['articles'] as List<Map<String, dynamic>>;

// articles.forEach((article) {
//   ArticleModel articleModel = ArticleModel(imageURL: article['urlToImage'], title: article['title'], subStitle: article['description']);
//   articleList.add(articleModel);
// });