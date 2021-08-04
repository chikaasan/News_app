import 'package:novosti/models/filters.dart';

import 'filterbloc_provider.dart';

class FilterRepository {
  Future<List<Filter>> getFilter() {
    FilterProvider provider = FilterProvider();
    return provider.getFilter();
  }
}
