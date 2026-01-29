import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:world_news/screens/home_screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Column(
              children: [
                LottieBuilder.asset('Assets/Animation - 1740591730869.json')
              ],
            ),
          ),
        ),
        centered: true,
        splashIconSize: 900,
        duration: 5000,
        nextScreen: HomeScreen());
  }
}
