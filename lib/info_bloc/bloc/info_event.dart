part of 'info_bloc.dart';

@immutable
abstract class InfoEvent {}

class GetInfoEvent extends InfoEvent {
  final int index;
  GetInfoEvent(this.index);
}
