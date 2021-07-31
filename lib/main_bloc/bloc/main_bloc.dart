import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:novosti/main_bloc/bloc/main_repository.dart';
import 'package:novosti/models/news.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainRepository repository = MainRepository(); 
  MainBloc(this.repository) : super(MainInitial());

  @override
  Stream<MainState> mapEventToState(
    MainEvent event,
  ) async* {
    try {
      if(event is GetMainEvent) {
        yield MainInitial();
        List<Modell> dataNews = await repository.getNews();
        print(dataNews);
        yield MainLoaded(dataNews);
      }
    }catch (e) {
      yield MainError(Exception(e));
    }
  }
}
