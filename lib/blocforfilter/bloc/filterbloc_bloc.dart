import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:novosti/blocforfilter/bloc/filterbloc_repository.dart';
import 'package:novosti/models/filters.dart';

part 'filterbloc_event.dart';
part 'filterbloc_state.dart';

class FilterblocBloc extends Bloc<FilterblocEvent, FilterblocState> {
  FilterRepository repository = FilterRepository();

  FilterblocBloc(this.repository) : super(FilterInitial());

  @override
  Stream<FilterblocState> mapEventToState(
    FilterblocEvent event,
  ) async* {
    try {
      if (event is GetFilterEvent) {
        yield FilterInitial();
        List<Filter> dataFilter = await repository.getFilter();
        print(dataFilter);
        yield FilterLoaded(dataFilter);
      }
    } catch (e) {
      yield FilterError(Exception(e));
    }
  }
}
