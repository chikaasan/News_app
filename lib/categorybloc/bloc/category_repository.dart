import 'package:novosti/categorybloc/bloc/category_provider.dart';
import 'package:novosti/models/filters.dart';

class FilterRepository {
  Future<List<Filter>> getFilter(String lang) {
    FilterProvider provider = FilterProvider();
    return provider.getFilter(lang);
  }
}
