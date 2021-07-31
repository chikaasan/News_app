import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:novosti/contants/cusom_text.dart';
import 'package:novosti/models/news.dart';

class ListNews extends StatefulWidget {
  final Modell array;
  ListNews(this.array);
  @override
  _ListNews createState() => _ListNews();
}

class _ListNews extends State<ListNews> {
  @override
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.of(context).push(_createRoute(widget.array));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(widget.array.logo!))),
            ),
            Container(
              height: 80,
              padding: EdgeInsets.only(left: 16, right: 27),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: 50,
                      width: 280,
                      child: Text(
                        widget.array.title!,
                        style: TaskText.regular16,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      )),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              decoration: BoxDecoration(color: Color(0xffFFFFFF)),
            ),
            SizedBox(
              height: 12,
            )
          ],
        ),
      ),
    );
  }
}
