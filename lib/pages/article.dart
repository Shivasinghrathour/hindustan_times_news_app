import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:news_application/config/color.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

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
                        "Sam Pitroda's ‘inheritance tax’ remarks spark huge row, BJP slams Congress",
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
                      "BY SHIVAM TATHOUR",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    // post time
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "11 hours ago",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        SizedBox(width: 15),
                        // read time
                        Text(
                          "6 mins read",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
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
                    image: NetworkImage(
                        "https://www.hindustantimes.com/ht-img/img/2024/04/24/550x309/sam-pitroda-file-photo_45b0be94-4ff4-11e9-b593-e8dc2d81c30e_1713938424515.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            // final article
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Flexible(
                    child: Text(
                        '''“It is unfortunate that what I said as an individual on inheritance tax in the US is twisted by Godi media to divert attention from what lies PM is spreading about Congress manifesto. PM’s comments Mangal Sutra & gold snatching is simply unreal,” Sam Pitroda said in a post on X (formerly Twitter). Sam Pitroda's clarification comes after Bharatiya Janata Party leaders slammed him over his remarks on the redistribution of wealth where he reportedly advocated an inheritance tax law in the country, even as the Congress sought to distance itself from the comments saying that his views do not always reflect the position of the party.''',
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
