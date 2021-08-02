import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'filterbloc_event.dart';
part 'filterbloc_state.dart';

class FilterblocBloc extends Bloc<FilterblocEvent, FilterblocState> {
  FilterblocBloc() : super(FilterblocInitial());

  @override
  Stream<FilterblocState> mapEventToState(
    FilterblocEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
