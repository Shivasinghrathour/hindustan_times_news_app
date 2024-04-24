import 'package:flutter/material.dart';
import 'package:news_application/config/theme.dart';
import 'package:news_application/pages/SplashScreen.dart';
import 'package:news_application/pages/latestnews.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      title: 'News App',
      home: const LatestNews(),
    );
  }
}
