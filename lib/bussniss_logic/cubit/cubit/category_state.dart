part of 'category_cubit.dart';

@immutable
sealed class CategoryState {}

final class CategoryInitial extends CategoryState {}

class Categoryloading extends CategoryState {
  Categoryloading();
}

class Categorysucsses extends CategoryState {
  final List<NewsModel> category;
  Categorysucsses(this.category);
}

class Categoryfailed extends CategoryState {
  final String? errorMessage;
  Categoryfailed({this.errorMessage});
}
