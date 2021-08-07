part of 'category_bloc.dart';

@immutable
abstract class FilterState {}

class FilterInitial extends FilterState {}

class FilterLoaded extends FilterState {
  final List<Filter> dataFilter;
  FilterLoaded(this.dataFilter);
}

class FilterError extends FilterState {
  final Exception mesagge;
  FilterError(this.mesagge);
}
