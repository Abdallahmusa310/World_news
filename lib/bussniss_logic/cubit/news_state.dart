part of 'news_cubit.dart';

abstract class NewsState {}

class NewsInitial extends NewsState {}

class NewsLoading extends NewsState {
  NewsLoading();
}

class NewsSuccess extends NewsState {
  final List<NewsModel> news;
  NewsSuccess(this.news);
}

class NewsFailed extends NewsState {
  final String? errorMessage;
  NewsFailed({this.errorMessage});
}
