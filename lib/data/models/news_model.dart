class NewsModel {
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String time;

  NewsModel(
      {required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.time});

  factory NewsModel.fromJson(json) {
    return NewsModel(
        title: json['title'] ?? "No title",
        description: json['description'] ?? "No description available",
        url: json['url'] ?? "",
        urlToImage: json['urlToImage'] ?? "Assets/n7.png",
        time: json["publishedAt"] ?? "");
  }
}
