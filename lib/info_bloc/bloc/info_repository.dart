import 'package:novosti/info_bloc/bloc/info_provider.dart';
import 'package:novosti/models/news_id.dart';

class InfoRepository {
  Future<NewsId> getNewsId(String index) {
    InfoProvider provider = InfoProvider();
    return provider.getNewsId(index);
  }
}