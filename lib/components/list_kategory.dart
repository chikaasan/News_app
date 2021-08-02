import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:novosti/models/filters.dart';
import 'package:novosti/models/news.dart';

class Kategory extends StatefulWidget {
  // final Filter data;

  Kategory();

  @override
  _Kategory createState() => _Kategory();
}

class _Kategory extends State<Kategory> {
  List<bool> select = [];
  @override
  void initState() {
    select = List.generate(Allfilters.types.length, (index) => false);
    select[0] = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 70,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: Allfilters.types.length,
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
                          Allfilters.types.length, (index) => false);
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
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                  decoration: BoxDecoration(
                      color: select[index] ? Color(0xff71C343) : Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    Allfilters.types[index].name!,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: select[index] ? Colors.white : Colors.grey),
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
    );
  }
}
