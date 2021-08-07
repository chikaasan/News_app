import 'package:dropdown_below/dropdown_below.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:novosti/categorybloc/bloc/category_bloc.dart';
import 'package:novosti/categorybloc/bloc/category_repository.dart';
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
  List _testList = [
    {'keyword': 'RU'},
    {'keyword': 'KG'},
  ];
  List<DropdownMenuItem<Object?>> _dropdownTestItems = [];
  var _selectedTest;
  @override
  void initState() {
    bloc.add(GetMainEvent(Lang.lang.toString()));
    bloc2.add(GetFilterEvent(Lang.lang.toString()));
    _dropdownTestItems = buildDropdownTestItems(_testList);
    super.initState();
  }

  final bloc2 = FilterBloc(FilterRepository());
  final bloc = MainBloc(MainRepository());
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
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
              child: Container(
                  child: DropdownBelow(
                itemWidth: 60,
                itemTextstyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
                boxTextstyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
                boxPadding: EdgeInsets.fromLTRB(10, 0, 13, 0),
                boxWidth: 80,
                icon: Icon(
                  Icons.language,
                  color: Colors.black,
                ),
                hint: Text(Lang.lang.toString()),
                value: _selectedTest,
                items: _dropdownTestItems,
                onChanged: (selectedTest) {
                  setState(() {
                    _selectedTest = selectedTest;
                    Lang.lang = _selectedTest["keyword"].toString();
                    print(Lang.lang);
                  });
                  Lang.lang = _selectedTest["keyword"].toString();
                  bloc.add(GetMainEvent(Lang.lang.toString()));
                  bloc2.add(GetFilterEvent(Lang.lang.toString()));
                  print(Lang.lang);
                },
              )),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              BlocProvider(
                create: (context) => bloc2,
                child: BlocBuilder<FilterBloc, FilterState>(
                  bloc: bloc2,
                  builder: (context, state) {
                    if (state is FilterInitial) {
                      return Center(child: Loading());
                    } else if (state is FilterLoaded) {
                      return Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        height: height * 0.07,
                        child: BlocProvider.value(
                            value: bloc, child: Kategory(state.dataFilter)),
                      );
                    } else {
                      return Center(child: Text("OOps"));
                    }
                  },
                ),
              ),
              BlocBuilder<MainBloc, MainState>(
                bloc: bloc,
                builder: (context, state) {
                  if (state is MainInitial) {
                    return Center(child: Loading());
                  } else if (state is MainLoaded) {
                    return Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: state.dataNews.length,
                        itemBuilder: (BuildContext context, index) {
                          return SingleChildScrollView(
                              child: ListNews(state.dataNews[index], index));
                        },
                      ),
                    );
                  } else {
                    return Scaffold(body: Center(child: Text("OOps")));
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
    // return BlocProvider(
    //   create: (context) => bloc,
    //   child: BlocBuilder<MainBloc, MainState>(
    //     bloc: bloc,
    //     builder: (context, state) {
    //       if (state is MainInitial) {
    //         return Scaffold(body: Center(child: Loading()));
    //       } else if (state is MainLoaded) {
    //         return
    //       } else {
    //         return Scaffold(body: Center(child: Text("OOps")));
    //       }
    //     },
    //   ),
    // );
  }
}

List<DropdownMenuItem<Object?>> buildDropdownTestItems(List _testList) {
  List<DropdownMenuItem<Object?>> items = [];
  for (var i in _testList) {
    items.add(
      DropdownMenuItem(
        value: i,
        child: Text(i['keyword']),
      ),
    );
  }
  return items;
}

class Lang {
  static String lang = "RU";
}
