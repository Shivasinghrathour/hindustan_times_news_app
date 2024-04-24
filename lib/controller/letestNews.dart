import 'dart:convert';
import 'package:news_application/model/newsmodel.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class NewsController extends GetxController {
  // i created a list for save my articls
  RxList<NewsModel> tradingNewsList = <NewsModel>[].obs;
  RxList<NewsModel> tradingNews5 = <NewsModel>[].obs;
  // onint function for call my api first

  void onInit() async {
    super.onInit();
    await latestNews();
  }

  Future<void> latestNews() async {
    // baseURL hame api website se milta hai jise hamne baseURL naam k variable me store kiya hai.
    var baseURL =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=e4dc9f3d142f42e8b577115902374211";

    try {
      var response = await http.get(Uri.parse(baseURL));

      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articlas = body["articles"];
        for (var news in articlas) {
          tradingNewsList.add(NewsModel.fromJson(news));
        }
        tradingNews5.value = tradingNewsList.sublist(0, 1).obs;
      } else {
        Get.snackbar("Error", "Some this went wrong");
      }
    } catch (ex) {
      Get.snackbar("Error", ex.toString());
    }
  }
}
