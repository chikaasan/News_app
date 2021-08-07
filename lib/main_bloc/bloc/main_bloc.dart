import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:novosti/main_bloc/bloc/main_repository.dart';
import 'package:novosti/models/filters.dart';
import 'package:novosti/models/news.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainRepository repository = MainRepository();
  FilterRepository repository2 = FilterRepository();
  MainBloc(this.repository, this.repository2) : super(MainInitial());

  @override
  Stream<MainState> mapEventToState(
    MainEvent event,
  ) async* {
    try {
      if (event is GetMainEvent) {
        yield MainInitial();
        List<Filter> dataFilter = await repository2.getFilter(event.lang);
        print(dataFilter);
        List<Modell> dataNews =
            await repository.getNews(event.lang, id: event.id);
        print(dataNews);
        yield MainLoaded(dataNews, dataFilter);
      }
    } catch (e) {
      yield MainError(Exception(e));
    }
  }
}
