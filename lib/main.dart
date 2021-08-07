import 'package:flutter/material.dart';
import 'package:novosti/screens/first_screen.dart';

import 'package:novosti/screens/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 2)),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(debugShowCheckedModeBanner: false, home: Splash());
        } else {
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            debugShowCheckedModeBanner: false,
            home: MyHomePage(),
          );
        }
      },
    );
  }
}
