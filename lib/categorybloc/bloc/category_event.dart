part of 'category_bloc.dart';

@immutable
abstract class FilterEvent {}

class GetFilterEvent extends FilterEvent {
  final String lang;
  GetFilterEvent(
    this.lang,
  );
}
