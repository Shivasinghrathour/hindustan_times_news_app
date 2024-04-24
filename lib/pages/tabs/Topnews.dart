import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:news_application/config/color.dart';
import 'package:news_application/constant/divider.dart';
import 'package:news_application/controller/letestNews.dart';
import 'package:news_application/model/newsmodel.dart';
import 'package:news_application/pages/article.dart';
import 'package:news_application/widgets/imagebox.dart';
import 'package:news_application/widgets/newsbox.dart';

class Topnews extends StatelessWidget {
  const Topnews({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    NewsModel newsModel = Get.put(NewsModel());
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          // image box news
          Obx(
            () => Column(
                children: newsController.tradingNews5
                    .map(
                      (e) => ImageBox(
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ArticlePage(
                                        news: e,
                                      )));
                        },
                        newsName: e.title ?? "No title",
                        image: NetworkImage(e.urlToImage!),
                        author: e.author ?? "Unknow",
                        readtime: e.publishedAt!,
                      ),
                    )
                    .toList()),
          ),
          mydivider,
          //newsbox
          Obx(
            () => Column(
                children: newsController.tradingNewsList
                    .map(
                      (p) => NewsBox(
                          ontap: () {
                            Get.to(ArticlePage(news: p));
                          },
                          newsTitle: p.title ?? "Unknow ",
                          authorNmae: p.author ?? "Unknow",
                          timeToRead: p.publishedAt!,
                          imageProvider: NetworkImage(p.urlToImage!)),
                    )
                    .toList()),
          ),

          // Politics tab
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Politics",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                InkWell(
                  onTap: () {
                    DefaultTabController.of(context)?.animateTo(5);
                  },
                  child: Text(
                    "View All > ",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ],
            ),
          ),

          ImageBox(
            ontap: () {
              Get.to(ArticlePage(news: newsModel));
            },
            newsName:
                "Delhi HC junks PIL seeking Arvind Kejriwal's release on ‘extraordinary interim bail’, imposes ₹75,000 fine",
            image: NetworkImage(
                "https://www.hindustantimes.com/ht-img/img/2024/04/22/550x309/Amit_Shah_investment_portfolio_1713774601912_1713774602417.jpg"),
            author: "Shivam ",
            readtime: "4 min read",
          ),
          mydivider,

          mydivider,
          SizedBox(height: 20),
          // infographics tab
          Container(
            height: 450,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiary.withOpacity(.6)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Infographics",
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 10),
                              child: Center(
                                child: Text(
                                  "New",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        "View All > ",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                            "Simplifying news with the help of images, charts and graphs",
                            style: Theme.of(context).textTheme.labelSmall),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                // iamges of infographics
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 35,
                            width: 168,
                            decoration: BoxDecoration(color: LbgColor),
                            child: Center(
                              child: Text(
                                "Apr 23, 2004",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          Container(
                            height: 250,
                            width: 220,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9798887620237/bhagavad-gita-9798887620237_lg.jpg",
                                    scale: 1),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 35,
                                width: 168,
                                decoration: BoxDecoration(color: LbgColor),
                                child: Center(
                                  child: Text(
                                    "Apr 23, 2004",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              Container(
                                height: 250,
                                width: 220,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://www.zorbabooks.com/wp-content/uploads/2018/03/Bhagwat-geeta-F-final-300x479.jpg",
                                        scale: 1),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 35,
                                width: 168,
                                decoration: BoxDecoration(color: LbgColor),
                                child: Center(
                                  child: Text(
                                    "Apr 23, 2004",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              Container(
                                height: 250,
                                width: 220,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://notionpress.com/thumbs/phpThumb.php?src=https://notionpress.com/coveruploads/5fcf66a86780a-959762330.png&f=webp&h=600",
                                        scale: 1),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
