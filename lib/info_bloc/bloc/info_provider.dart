import 'package:dio/dio.dart';
import 'package:novosti/helper/api_requester.dart';
import 'package:novosti/models/news_id.dart';

class InfoProvider {
  Future<NewsId> getNewsId(String index) async {
    try {
      ApiRequester requester = ApiRequester();
      Response response = await requester.toGet("news/$index/");
      if (response.statusCode == 200) {
        return NewsId.fromJson(response.data);
      }
      throw Exception(response);
    } catch (e) {
      throw Exception(e);
    }
  }
}
