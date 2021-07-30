import 'package:flutter/material.dart';
import 'package:news/components/picture.dart';
import 'package:news/contants/cusom_text.dart';
import 'package:news/models/news.dart';

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
              child: Text(model.name, style: TaskText.regular16a, softWrap: true,),
            ),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: model.pictures.length,
              itemBuilder: (BuildContext context, index){
                return SingleChildScrollView(child: Picture(model.pictures[index]),);
              }
            ),
            Expanded(
              child: Container(
                child: Text(model.information, style: TaskText.regular14a, softWrap: true,),
              ),
            )
          ],
        ),
      ),
    );
  }
}