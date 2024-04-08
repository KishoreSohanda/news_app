import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:location/location.dart';

import '../api_keys.dart';

class NewsModel {
  String country = '';

  Future<void> getNews() async {
    var currentLocation = await Location().getLocation();
    var newsUrl = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=in&category=sports&q=football&apiKey=${ApiKeys().newsApiKey}');
    var locationIqUrl = Uri.parse(
        'https://us1.locationiq.com/v1/reverse?key=${ApiKeys().locationIqApiKey}&lat=${currentLocation.latitude}&lon=${currentLocation.longitude}&format=json');
    var newsRes = await http.get(newsUrl);
    var locationRes = await http.get(locationIqUrl);
    print(json.decode(locationRes.body)['address']['city']);
  }
}
