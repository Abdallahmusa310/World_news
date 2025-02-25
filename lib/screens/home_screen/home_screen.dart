import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:world_news/bussniss_logic/cubit/news_cubit.dart';
import 'package:world_news/constans/colors.dart';
import 'package:world_news/data/Api/news_api.dart';
import 'package:world_news/data/repositry/news_repo.dart';
import 'package:world_news/screens/home_screen/widgets/list_of_category.dart';
import 'package:world_news/screens/home_screen/widgets/list_of_news.dart';
import 'package:world_news/widgets/coustm_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsCubit>(
      create: (context) =>
          NewsCubit(NewsRepo(newsApi: NewsApi(q: 'general')))..getNews(),
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
          child: BlocBuilder<NewsCubit, NewsState>(
            builder: (context, state) {
              if (state is NewsLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is NewsSuccess) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<NewsCubit>().getNews();
                  },
                  child: CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    slivers: [
                      const SliverToBoxAdapter(child: ListOfCategory()),
                      SliverToBoxAdapter(
                          child: ListOfNews(newslist: state.news)),
                    ],
                  ),
                );
              } else if (state is NewsFailed) {
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
                          context.read<NewsCubit>().getNews();
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
