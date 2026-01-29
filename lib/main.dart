import 'dart:io';

import 'package:flutter/material.dart';
import 'package:world_news/constans/strings.dart';
import 'package:world_news/screens/catgory_screen/catgory_screen.dart';
import 'package:world_news/screens/details_screen/details_screen.dart';
import 'package:world_news/screens/home_screen/home_screen.dart';
import 'package:world_news/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const WorldnewsApp());
  String name;
  print('enter your name');
  name = stdin.readLineSync()!;
  print('hello $name');
}

class WorldnewsApp extends StatelessWidget {
  const WorldnewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        homeScreen: (context) => const HomeScreen(),
        detailsscreen: (context) => const DetailsScreen(),
        catgoryScreen: (context) => const CatgoryScreen(),
        splashScreen: (context) => const SplashScreen()
      },
      initialRoute: splashScreen,
    );
  }
}
