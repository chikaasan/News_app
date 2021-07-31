import 'package:flutter/material.dart';
import 'package:news/contants/cusom_text.dart';

class Kategory extends StatefulWidget{
  final String data;
  Kategory(this.data);

  @override 
  _Kategory createState() => _Kategory();
}

class _Kategory extends State<Kategory> {
  @override
  ValueNotifier<Color> _color = ValueNotifier(Colors.white);
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            if(_color.value == Colors.white) {
            _color.value = Colors.green;
            }else {
              _color.value = Colors.white;
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
                child: Text(widget.data, style: TaskText.regular14b,),
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