import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:tixehr/constants/images.dart';
import 'package:tixehr/screens/splash/select_user_screen.dart';

class THSplashScreen extends StatelessWidget {
  const THSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration: 1000,
            splash: Image.asset(THImages.lightLogo),
            nextScreen: const THSelectUser(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.black));
  }
}
