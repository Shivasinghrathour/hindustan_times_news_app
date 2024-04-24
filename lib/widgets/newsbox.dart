import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:news_application/constant/divider.dart';
import 'package:news_application/controller/letestNews.dart';

class NewsBox extends StatelessWidget {
  final String newsTitle;
  final String authorNmae;
  final ImageProvider imageProvider;
  final String timeToRead;
  final VoidCallback ontap;
  const NewsBox({
    super.key,
    required this.newsTitle,
    required this.authorNmae,
    required this.timeToRead,
    required this.imageProvider,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: ontap,
                        child: Text(
                          newsTitle,
                          style: Theme.of(context).textTheme.displayMedium,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "By- ${authorNmae}",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                timeToRead,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                          const Row(
                            children: [Icon(Icons.linear_scale_outlined)],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: InkWell(
                  onTap: ontap,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: imageProvider,
                        ),
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
            ],
          ),
          mydivider
        ],
      ),
    );
  }
}
