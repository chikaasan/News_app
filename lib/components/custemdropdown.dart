import 'package:dropdown_below/dropdown_below.dart';
import 'package:flutter/material.dart';

class CustemDropDown extends StatefulWidget {
  const CustemDropDown({Key? key}) : super(key: key);

  @override
  _CustemDropDownState createState() => _CustemDropDownState();
}

class _CustemDropDownState extends State<CustemDropDown> {
  List _testList = [
    {'no': 1, 'keyword': 'RU'},
    {'no': 2, 'keyword': 'KG'},
    {'no': 3, 'keyword': 'EN'}
  ];
  List<DropdownMenuItem<Object?>> _dropdownTestItems = [];
  var _selectedTest;

  @override
  void initState() {
    _dropdownTestItems = buildDropdownTestItems(_testList);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  List<DropdownMenuItem<Object?>> buildDropdownTestItems(List _testList) {
    List<DropdownMenuItem<Object?>> items = [];
    for (var i in _testList) {
      items.add(
        DropdownMenuItem(
          value: i,
          child: Text(i['keyword']),
        ),
      );
    }
    return items;
  }

  onChangeDropdownTests(selectedTest) {
    print(selectedTest);
    setState(() {
      _selectedTest = selectedTest;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: DropdownBelow(
      itemWidth: 60,
      itemTextstyle: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
      boxTextstyle: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
      boxPadding: EdgeInsets.fromLTRB(13, 12, 13, 12),
      boxWidth: 80,
      icon: Icon(
        Icons.language,
        color: Colors.black,
      ),
      hint: Text(''),
      value: _selectedTest,
      items: _dropdownTestItems,
      onChanged: onChangeDropdownTests,
    ));
  }
}
