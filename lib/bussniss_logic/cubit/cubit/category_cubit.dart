import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:world_news/data/models/news_model.dart';
import 'package:world_news/data/repositry/category_repo.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CategoryRepo categoryRepo;
  CategoryCubit(this.categoryRepo) : super(CategoryInitial());
  void getNews() async {
    try {
      emit(Categoryloading());
      final category = await categoryRepo.getNews();
      if (category.isNotEmpty) {
        emit(Categorysucsses(category));
      } else {
        emit(Categoryfailed());
      }
    } catch (e) {
      emit(Categoryfailed(errorMessage: e.toString()));
    }
  }
}
