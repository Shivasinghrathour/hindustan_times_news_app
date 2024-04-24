import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageBox extends StatelessWidget {
  final String newsName;
  final ImageProvider image;
  final String author;
  final String readtime;
  final VoidCallback ontap;
  const ImageBox(
      {super.key,
      required this.newsName,
      required this.image,
      required this.author,
      required this.readtime,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.pink,
          image: DecorationImage(
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.difference),
              opacity: .4,
              fit: BoxFit.cover,
              image: image),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 110, left: 15, bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: InkWell(
                  onTap: ontap,
                  child: Text(
                    newsName,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "By- ${author}",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          readtime,
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.linear_scale_outlined,
                          color: Theme.of(context).colorScheme.background,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
