part of 'category_cubit.dart';

@immutable
sealed class CategoryState {}

final class CategoryInitial extends CategoryState {}

final class Categoryloading extends CategoryState {
  Categoryloading();
}

final class Categorysucsses extends CategoryState {
  final List<NewsModel> category;
  Categorysucsses(this.category);
}

final class Categoryfailed extends CategoryState {
  final String? errorMessage;
  Categoryfailed({this.errorMessage});
}
