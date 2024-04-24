import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/letestNews.dart';

class Mybar extends StatelessWidget {
  const Mybar({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return mybar;
  }
}

// My appbar widget
AppBar mybar = AppBar(
  // app name
  title: const Text("Hindustan"),
  actions: [
    // e paper button
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Text("E-Paper"),
      ),
    ),
    SizedBox(width: 10),
    // search button
    IconButton(
      onPressed: () {
        NewsController newsController = Get.put(NewsController());
        newsController.latestNews();
      },
      icon: Icon(Icons.search),
    ),
    // user profile button
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.supervised_user_circle_sharp),
    ),
  ],
  // tabs
  bottom: TabBar(
    isScrollable: true,
    tabs: [
      Tab(
        text: "Top News",
      ),
      Tab(text: "Elections"),
      Tab(text: "Election Pincode"),
      Tab(text: "Photos"),
      Tab(text: "Latest News"),
      Tab(text: "Politics"),
      Tab(text: "Cities"),
      Tab(text: "For You"),
      Tab(text: "Pick of The Day "),
    ],
  ),
);
