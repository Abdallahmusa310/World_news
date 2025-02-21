class NewsModel {
  final String title;
  final String description;
  final String url;
  final String urlToImage;

  NewsModel({
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      title: json['title'] ?? "No title", // 🔴 استبدال null بنص افتراضي
      description: json['description'] ?? "No description available",
      url: json['url'] ?? "",
      urlToImage: json['urlToImage'] ?? "Assets/n7.png", // 🔴 صورة افتراضية
    );
  }
}
