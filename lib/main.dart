import 'package:flutter/material.dart';
import 'package:novosti/components/custemdropdown.dart';
import 'package:novosti/components/list_news.dart';
import 'package:novosti/contants/cusom_text.dart';
import 'package:novosti/models/news.dart';
import 'package:novosti/screens/splashscreen.dart';

import 'models/filters.dart';

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
  final List<Filter> data = Allfilters.types;
  List<bool> select = [];
  @override
  void initState() {
    select = List.generate(News.types.length, (index) => false);
    select[0] = true;
    super.initState();
  }

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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 70,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: News.types.length,
              itemBuilder: (BuildContext context, index) {
                return SingleChildScrollView(
                    child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (index != 0) {
                            select[0] = false;

                            select[index] = !select[index];
                          } else if (index == 0) {
                            select = List.generate(
                                News.types.length, (index) => false);
                            select[0] = true;
                          } else {
                            select[index] = !select[index];
                            print("object");
                          }
                          if (select.every((element) => element == false)) {
                            select[0] = true;
                          }
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                        decoration: BoxDecoration(
                            color: select[index]
                                ? Color(0xff71C343)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          data[index].name!,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color:
                                  select[index] ? Colors.white : Colors.grey),
                        ),
                      ),
                      // child: Kategory(Allfilters.types[index]),
                    ),
                    SizedBox(
                      width: 8,
                    )
                  ],
                ));
              },
            ),
          ),
          Container(
            height: height * 0.77,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: News.array.length,
              itemBuilder: (BuildContext context, index) {
                return SingleChildScrollView(
                    child: ListNews(News.array[index]));
              },
            ),
          ),
        ],
      ),
    );
  }
}
