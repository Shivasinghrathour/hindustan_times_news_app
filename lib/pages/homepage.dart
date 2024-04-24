import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:news_application/constant/appbar.dart';
import 'package:news_application/controller/letestNews.dart';
import 'package:news_application/pages/tabs/Topnews.dart';

class LatestNews extends StatelessWidget {
  const LatestNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: mybar,
        drawer: const Drawer(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DrawerHeader(
                  child: Text("Popular Section"),
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //top news section tab
            Topnews(),

            // Election tab
            Topnews(),
            Text("Election"),

            Text("Election Pincodeign"),
            Text("Photos"),
            Text("Latest News"),
            Text("Politics"),
            Text("Cities"),
            Text("For You"),
          ],
        ),
      ),
    );
  }
}
