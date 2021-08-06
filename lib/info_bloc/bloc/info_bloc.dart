import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:novosti/info_bloc/bloc/info_repository.dart';
import 'package:novosti/models/news_id.dart';
import 'package:novosti/screens/info_screen.dart';

part 'info_event.dart';
part 'info_state.dart';

class InfoBloc extends Bloc<InfoEvent, InfoState> {
  InfoRepository repository = InfoRepository();
  InfoBloc(this.repository) : super(InfoInitial());

  @override
  Stream<InfoState> mapEventToState(
    InfoEvent event,
  ) async* {
    try {
      if (event is GetInfoEvent) {
        yield InfoInitial();
        NewsId dataId = await repository.getNewsId((event.index).toString());

        yield InfoLoaded(dataId);
      }
    } catch (e) {
      yield InfoError(Exception(e));
    }
  }
}
