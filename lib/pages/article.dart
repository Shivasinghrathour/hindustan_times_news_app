import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:news_application/config/color.dart';
import 'package:news_application/model/newsmodel.dart';

class ArticlePage extends StatelessWidget {
  final NewsModel news;
  const ArticlePage({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // top row for back, save article, share bar
            // back button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                    ),
                  ),
                  // share button
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.bookmark_border,
                        ),
                      ),
                      // share button
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share_outlined,
                        ),
                      ),
                      // text size butoon
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.format_size,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // heading box for article page
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 48, 62, 62),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // news tags
                    Center(
                      child: Text(
                        "INDIA NEWS",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    // article heading
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Text(
                        news.title ?? "Unknow",
                        style: Theme.of(context).textTheme.headlineLarge,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // divider
                    Divider(
                      thickness: 4,
                      indent: 120,
                      endIndent: 120,
                      color: LprimaryColor,
                    ),
                    // author name
                    Text(
                      "BY: ${news.author!}",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    // post time
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          news.publishedAt!,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        SizedBox(width: 15),
                        // read time
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // image for aticle

            Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: NetworkImage(news.urlToImage!), fit: BoxFit.cover),
              ),
            ),
            // final article
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Flexible(
                    child: Text(news.content ?? "No Content...",
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
