import 'package:dio/dio.dart';
import 'package:novosti/helper/api_requester.dart';
import 'package:novosti/models/filters.dart';
import 'package:novosti/models/news.dart';

class MainProvider {
  Future<List<Modell>> getNews(String lang) async {
    try {
      ApiRequester requester = ApiRequester();
      Response response = await requester.toGet("news/?filter=&lang=$lang");
      if (response.statusCode == 200) {
        return response.data
            .map<Modell>((val) => Modell.fromJson(val))
            .toList();
      }
      throw Exception(response);
    } catch (e) {
      throw Exception(e);
    }
  }
}

class FilterProvider {
  Future<List<Filter>> getFilter(String lang) async {
    try {
      ApiRequester requester = ApiRequester();
      Response response = await requester.toGet("category/?lang=$lang");
      if (response.statusCode == 200) {
        return response.data
            .map<Filter>((val) => Filter.fromJson(val))
            .toList();
      }
      throw Exception(response);
    } catch (e) {
      throw Exception(e);
    }
  }
}
