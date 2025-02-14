import 'package:flutter/material.dart';
import 'package:world_news/screens/constans/strings.dart';
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
      },
      initialRoute: homeScreen,
    );
  }
}
