import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:novosti/categorybloc/bloc/category_repository.dart';
import 'package:novosti/models/filters.dart';

part 'category_event.dart';
part 'category_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterRepository repository2 = FilterRepository();
  FilterBloc(this.repository2) : super(FilterInitial());
  @override
  Stream<FilterState> mapEventToState(
    FilterEvent event,
  ) async* {
    try {
      if (event is GetFilterEvent) {
        yield FilterInitial();
        List<Filter> dataFilter = await repository2.getFilter(event.lang);
        print(dataFilter);
        yield FilterLoaded(dataFilter);
      }
    } catch (e) {
      yield FilterError(Exception(e));
    }
  }
}
