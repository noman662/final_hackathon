import 'package:card/welcomeslider.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/Splash/Splash.jpg',scale: 1,),
        nextScreen: welcomeslider(),
        duration: 1000,
        splashTransition: SplashTransition.slideTransition,
      ),
    );
  }
}
