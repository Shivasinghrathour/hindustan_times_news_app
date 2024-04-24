import 'package:flutter/material.dart';

class TopLatestSection extends StatelessWidget {
  const TopLatestSection({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Latest News",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Row(
            children: [
              Text(
                "See All",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Theme.of(context).colorScheme.secondary,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
