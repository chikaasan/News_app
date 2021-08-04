part of 'filterbloc_bloc.dart';

@immutable
abstract class FilterblocState {}

class FilterInitial extends FilterblocState {}

class FilterLoaded extends FilterblocState {
  final List<Filter> dataFilter;
  // final List<bool> selected;
  FilterLoaded(
    this.dataFilter,
  );
}

class FilterError extends FilterblocState {
  final Exception mesagge;
  FilterError(this.mesagge);
}
