import 'package:flutter/material.dart';
import 'package:world_news/screens/home_screen/widgets/list_of_news.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [ListOfNews()],
      ),
    );
  }
}
