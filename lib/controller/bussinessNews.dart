import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class BusinessNews extends GetxController {
  Future<void> bussinessNews() async {
    var baseURL =
        "https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=e4dc9f3d142f42e8b577115902374211";

    var responce = await http.get(Uri.parse(baseURL));
    print(responce);
  }
}
