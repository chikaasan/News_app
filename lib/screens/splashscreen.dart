import 'package:flutter/material.dart';
import 'package:novosti/contants/image.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 94,
            width: 94,
            child: Image(
              image: AssetImage(TaskImage.logo),
            ),
          ),
          SizedBox(
            height: 43,
          ),
          Text(
            "Новости",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
