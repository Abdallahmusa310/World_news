import 'package:bloc/bloc.dart';
import 'package:world_news/data/models/news_model.dart';
import 'package:world_news/data/repositry/news_repo.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  final NewsRepo newsRepo;
  NewsCubit(this.newsRepo) : super(NewsInitial());
  void getNews() async {
    try {
      emit(NewsLoading());
      final news = await newsRepo.getNews();
      if (news.isNotEmpty) {
        emit(NewsSuccess(news));
      } else {
        emit(NewsFailed());
      }
    } catch (e) {
      emit(NewsFailed(errorMessage: e.toString()));
    }
  }
}
