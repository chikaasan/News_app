part of 'main_bloc.dart';

@immutable
abstract class MainState {}

class MainInitial extends MainState {}

class MainLoaded extends MainState {
  final List<Modell> dataNews;
  MainLoaded(this.dataNews);
}

class MainError extends MainState {
  final Exception mesagge;
  MainError(this.mesagge);
}
