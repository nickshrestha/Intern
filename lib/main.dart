import 'package:flutter/material.dart';
import 'package:login/SplashPage.dart';
import 'LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Login UI',
    debugShowCheckedModeBanner: false,
    home: SplashScreen(duration: 3, goToPage: LoginScreen(),),
    );
  }
}