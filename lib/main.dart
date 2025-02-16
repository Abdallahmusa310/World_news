import 'package:flutter/material.dart';
import 'package:world_news/constans/strings.dart';
import 'package:world_news/screens/catgory_screen/catgory_screen.dart';
import 'package:world_news/screens/details_screen/details_screen.dart';
import 'package:world_news/screens/home_screen/home_screen.dart';

void main() {
  runApp(WorldnewsApp());
}

class WorldnewsApp extends StatelessWidget {
  const WorldnewsApp({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        homeScreen: (context) => HomeScreen(),
        detailsscreen: (context) => DetailsScreen(),
        catgoryScreen: (context) => CatgoryScreen(),
      },
      initialRoute: homeScreen,
    );
  }
}
