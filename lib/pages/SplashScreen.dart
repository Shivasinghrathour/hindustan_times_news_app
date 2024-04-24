import 'package:flutter/material.dart';
import 'package:news_application/config/color.dart';

class SpashPage extends StatelessWidget {
  const SpashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "News App",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
