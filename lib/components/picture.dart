import 'package:flutter/cupertino.dart';

class Picture extends StatefulWidget {
  final String aaa;
  Picture(this.aaa);
  @override
  _Picture createState() => _Picture();
}

class _Picture extends State<Picture> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(widget.aaa)
            )
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}