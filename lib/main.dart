import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:novosti/components/custemdropdown.dart';
import 'package:novosti/components/list_news.dart';
import 'package:novosti/components/loading.dart';
import 'package:novosti/contants/cusom_text.dart';
import 'package:novosti/main_bloc/bloc/main_bloc.dart';
import 'package:novosti/main_bloc/bloc/main_repository.dart';

import 'package:novosti/screens/splashscreen.dart';

import 'components/list_kategory.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Replace the 3 second delay with your initialization code:
      future: Future.delayed(Duration(seconds: 2)),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(home: Splash());
        } else {
          // Loading is done, return the app:
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            debugShowCheckedModeBanner: false,
            home: MyHomePage(),
          );
        }
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final List<Filter> data = Allfilters.types;
  List<bool> select = [];
  @override
  void initState() {
    bloc.add(GetMainEvent());
    super.initState();
  }

  final bloc = MainBloc(MainRepository(), FilterRepository());
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
              padding: const EdgeInsets.only(right: 20.0),
              child: CustemDropDown()),
        ],
      ),
      body: Column(
        children: [
          BlocBuilder<MainBloc, MainState>(
            bloc: bloc,
            builder: (context, state) {
              if (state is MainInitial) {
                return Loading();
              } else if (state is MainLoaded) {
                return Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    height: height * 0.07,
                    child: Kategory(state.dataFilter));
              }
              return Center(child: Text("OOps"));
            },
          ),
          BlocBuilder<MainBloc, MainState>(
            bloc: bloc,
            builder: (context, state) {
              if (state is MainInitial) {
                return Loading();
              } else if (state is MainLoaded) {
                return Container(
                  height: height * 0.8,
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
                return Center(child: Text("OOps"));
              }
            },
          ),
        ],
      ),
    );
  }
}
