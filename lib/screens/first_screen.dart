import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:novosti/components/custemdropdown.dart';
import 'package:novosti/components/list_kategory.dart';
import 'package:novosti/components/list_news.dart';
import 'package:novosti/components/loading.dart';
import 'package:novosti/contants/cusom_text.dart';
import 'package:novosti/main_bloc/bloc/main_bloc.dart';
import 'package:novosti/main_bloc/bloc/main_repository.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    bloc.add(GetMainEvent(Lang.lang.toString()));
    super.initState();
  }

  final bloc = MainBloc(MainRepository(), FilterRepository());
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => bloc,
      child: BlocBuilder<MainBloc, MainState>(
        bloc: bloc,
        builder: (context, state) {
          if (state is MainInitial) {
            return Scaffold(body: Center(child: Loading()));
          } else if (state is MainLoaded) {
            return Scaffold(
              backgroundColor: Color(0xffE5E5E5),
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Color(0xffE5E5E5),
                title: Text(
                  " Новости",
                  style: TaskText.regular20,
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, top: 10),
                    child: BlocProvider.value(
                      value: bloc,
                      child: CustemDropDown(),
                    ),
                  )
                ],
              ),
              body: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    height: height * 0.07,
                    child: BlocProvider.value(
                        value: bloc,
                        child: Kategory(state.dataFilter, state.dataNews)),
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: state.dataNews.length,
                      itemBuilder: (BuildContext context, index) {
                        return SingleChildScrollView(
                            child: ListNews(state.dataNews[index], index));
                      },
                    ),
                  )
                ],
              ),
            );
          } else {
            return Scaffold(body: Center(child: Text("OOps")));
          }
        },
      ),
    );
  }
}
