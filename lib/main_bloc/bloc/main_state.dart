part of 'main_bloc.dart';

@immutable
abstract class MainState {}

class MainInitial extends MainState {}

class MainLoaded extends MainState {
  // final List<Filter> dataFilter;
  final List<Modell> dataNews;
  MainLoaded(
    this.dataNews,
    // this.dataFilter
  );
}

// class FilterLoaded extends MainState {
//   FilterLoaded(
//     this.dataFilter,
//   );
// }

class MainError extends MainState {
  final Exception mesagge;
  MainError(this.mesagge);
}
