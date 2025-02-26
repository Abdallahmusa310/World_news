import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:world_news/bussniss_logic/cubit/cubit/category_cubit.dart';
import 'package:world_news/constans/colors.dart';
import 'package:world_news/data/Api/news_api.dart';
import 'package:world_news/data/repositry/category_repo.dart';
import 'package:world_news/screens/home_screen/widgets/list_of_news.dart';
import 'package:world_news/widgets/coustm_text.dart';

class CatgoryScreen extends StatelessWidget {
  const CatgoryScreen({super.key, this.q});
  final String? q;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoryCubit>(
      create: (context) =>
          CategoryCubit(CategoryRepo(newsApi: NewsApi(q: q), q: q!))..getNews(),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CoustmText(text: 'World '),
              CoustmText(
                text: 'News',
                color: Appcolor.yello,
              )
            ],
          ),
        ),
        body: SafeArea(
          child: BlocBuilder<CategoryCubit, CategoryState>(
            builder: (context, state) {
              if (state is Categoryloading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is Categorysucsses) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<CategoryCubit>().getNews();
                  },
                  child: CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    slivers: [
                      SliverToBoxAdapter(
                          child: ListOfNews(newslist: state.category)),
                    ],
                  ),
                );
              } else if (state is Categoryfailed) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error_outline,
                          color: Colors.red, size: 60),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          state.errorMessage ?? 'An unknown error occurred',
                          textAlign: TextAlign.center,
                          style:
                              const TextStyle(color: Colors.red, fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          context.read<CategoryCubit>().getNews();
                        },
                        child: const Text('Retry'),
                      )
                    ],
                  ),
                );
              } else {
                return const Center(child: Text('No news available'));
              }
            },
          ),
        ),
      ),
    );
  }
}
