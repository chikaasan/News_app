import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class ApiRequester {
  static String url = "https://hackatonnewsapp.herokuapp.com/api/news/";

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
      return dio.get(url);
    }catch (e) {
      throw Exception(e);
    }
  }
}