import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsBox extends StatelessWidget {
  const NewsBox({super.key});

  @override
  Widget build(BuildContext context) {
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
                      Text(
                        "Lok Sabha elections: BJP gets first seat, Surat candidate wins unopposed",
                        style: Theme.of(context).textTheme.displayMedium,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "By- Shivam",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "4 min read ",
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
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://www.hindustantimes.com/ht-img/img/2024/04/22/550x309/Amit_Shah_investment_portfolio_1713774601912_1713774602417.jpg",
                        ),
                      ),
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
