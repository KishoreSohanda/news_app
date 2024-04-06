import 'package:http/http.dart' as http;

import '../api_keys.dart';

class NewsModel {
  var url =
      Uri.parse('https://newsapi.org/v2/top-headlines/sources?apiKey=$apiKey');
  Future<void> getNews() async {
    var res = await http.get(url);
    print(res.body);
  }
}
