import 'package:novosti/main_bloc/bloc/main_provider.dart';
import 'package:novosti/models/filters.dart';
import 'package:novosti/models/news.dart';

class MainRepository {
  Future<List<Modell>> getNews() {
    MainProvider provider = MainProvider();
    return provider.getNews();
  }
}

class FilterRepository {
  Future<List<Filter>> getFilter() {
    FilterProvider provider = FilterProvider();
    return provider.getFilter();
  }
}
