part of 'main_bloc.dart';

@immutable
abstract class MainEvent {}

class GetMainEvent extends MainEvent {
  final String lang;
  final int? id;
  GetMainEvent(this.lang, {this.id});
}
