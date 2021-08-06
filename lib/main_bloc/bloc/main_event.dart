part of 'main_bloc.dart';

@immutable
abstract class MainEvent {}

class GetMainEvent extends MainEvent {
  final String lang;

  GetMainEvent(this.lang);
}
