import 'package:flutter/material.dart';
import 'package:news/components/list_news.dart';
import 'package:news/contants/cusom_text.dart';
import 'package:news/models/news.dart';
import 'package:news/screens/filter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffE5E5E5),
        title: Text(" Новости", style: TaskText.regular20, ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 17, right: 20),
            child: InkWell(
              child: Text("Фильтр", style: TaskText.regular14,),
              onTap: () {
                Navigator.of(context).push(_createRoute());
              },
            ),
          )
        ],
      ),
      body: Container(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: News.array.length,
              itemBuilder: (BuildContext context, index){
                return SingleChildScrollView(child: ListNews(News.array[index]));
              },
              ),

          ),
      
      
    );
  }
}
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => FilterScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}