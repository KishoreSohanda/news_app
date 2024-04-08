import 'package:http/http.dart' as http;

import '../api_keys.dart' as key;

class NewsModel {
  var url = Uri.parse(
      'https://newsapi.org/v2/top-headlines/sources?apiKey=${key.apiKey}');
  Future<void> getNews() async {
    var res = await http.get(url);
    print(res.body);
  }
}
