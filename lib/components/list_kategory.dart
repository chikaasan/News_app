import 'package:flutter/material.dart';


class Kategory extends StatefulWidget{
  final String data;
  Kategory(this.data);

  @override 
  _Kategory createState() => _Kategory();
}

class _Kategory extends State<Kategory> {
  @override
  ValueNotifier<Color> _color = ValueNotifier(Colors.white);
  ValueNotifier<Color> _colorText = ValueNotifier(Colors.black);
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            if(_color.value == Colors.white) {
              _colorText.value = Colors.white;
              _color.value = Color(0xff71C343);
            }else {
              _color.value = Colors.white;
              _colorText.value = Colors.black;
            }
          },
          child: ValueListenableBuilder(
            valueListenable: _color, 
            builder: (context, value, child) =>
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              decoration: BoxDecoration(
                color: _color.value,
                borderRadius: BorderRadius.circular(20) 
                ),
                child: Text(widget.data, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: _colorText.value)),
            ),
          )
        ),
        SizedBox(
          width: 8,
        )
      ],
    );
  }
}