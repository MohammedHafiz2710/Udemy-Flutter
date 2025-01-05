class ArticleModel {
  final String imageURL;
  final String title;
  final String subStitle;
  final String articleURL;

  ArticleModel({required this.imageURL, required this.title, required this.subStitle, required this.articleURL});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(imageURL: json['image_url'], title: json['title'], subStitle: json['description'], articleURL: json['link']);
  }
}
