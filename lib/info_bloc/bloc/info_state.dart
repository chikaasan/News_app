part of 'info_bloc.dart';

@immutable
abstract class InfoState {}

class InfoInitial extends InfoState {}

class InfoLoaded extends InfoState {
  final NewsId data;
  InfoLoaded(this.data);
}

class InfoError extends InfoState {
  final Exception message;
  InfoError(this.message);
}
