import 'package:dio/dio.dart';

class ApiRequester {
  static String url = "https://hackatonnewsapp.herokuapp.com/api/";

  Future<Dio> initDio() async {
    return Dio(BaseOptions(
      baseUrl: url,
      responseType: ResponseType.json,
      receiveTimeout: 10000,
      connectTimeout: 10000,
    ));
  }

  Future<Response> toGet(String url) async {
    Dio dio = await initDio();
    try {
      print("URL llllll: $url");
      return dio.get(url);
    } catch (e) {
      throw Exception(e);
    }
  }
}
