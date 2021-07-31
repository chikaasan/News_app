import 'package:flutter/material.dart';
import 'package:novosti/components/picture.dart';
import 'package:novosti/contants/cusom_text.dart';
import 'package:novosti/models/news.dart';


class InfoScreen extends StatelessWidget {
  final Model model;
  InfoScreen(this.model);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF6F6F6),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              child: Text(model.name!, style: TaskText.regular16a, softWrap: true,),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              child: Text(model.data!, style: TaskText.regular14c,),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: model.pictures!.length,
              itemBuilder: (BuildContext context, index){
                return SingleChildScrollView(child: Picture(model.pictures![index]),);
              }
            ),
            Expanded(
              child: Container(
                child: Text(model.information!, style: TaskText.regular14a, softWrap: true,),
              ),
            )
          ],
        ),
      ),
    );
  }
}