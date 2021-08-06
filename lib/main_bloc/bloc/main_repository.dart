import 'package:novosti/main_bloc/bloc/main_provider.dart';
import 'package:novosti/models/filters.dart';
import 'package:novosti/models/news.dart';

class MainRepository {
  Future<List<Modell>> getNews(String lang) {
    MainProvider provider = MainProvider();
    return provider.getNews(lang);
  }
}

class FilterRepository {
  Future<List<Filter>> getFilter(String lang) {
    FilterProvider provider = FilterProvider();
    return provider.getFilter(lang);
  }
}
