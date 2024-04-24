import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_application/config/theme.dart';
import 'package:news_application/pages/SplashScreen.dart';
import 'package:news_application/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      title: 'News App',
      home: const LatestNews(),
    );
  }
}
