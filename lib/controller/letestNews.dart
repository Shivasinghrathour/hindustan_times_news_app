import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class NewsController extends GetxController {
  Future<void> latestNews() async {
    var baseURL =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=e4dc9f3d142f42e8b577115902374211";

    var response = await http.get(Uri.parse(baseURL));
    print(response);
    if (response.statusCode == 200) {
      print(response.body);
      var body = jsonDecode(response.body);
      print(body);
    }
  }
}
