import 'package:dropdown_below/dropdown_below.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:novosti/main_bloc/bloc/main_bloc.dart';

class CustemDropDown extends StatefulWidget {
  const CustemDropDown({Key? key}) : super(key: key);

  @override
  _CustemDropDownState createState() => _CustemDropDownState();
}

class _CustemDropDownState extends State<CustemDropDown> {
  List _testList = [
    {'keyword': 'RU'},
    {'keyword': 'KG'},
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
    setState(() {
      _selectedTest = selectedTest;
    });
    Lang.lang = _selectedTest["keyword"].toString();
    print(Lang.lang);
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
      boxPadding: EdgeInsets.fromLTRB(10, 0, 13, 0),
      boxWidth: 80,
      icon: Icon(
        Icons.language,
        color: Colors.black,
      ),
      hint: Text(Lang.lang.toString()),
      value: _selectedTest,
      items: _dropdownTestItems,
      onChanged: (selectedTest) {
        setState(() {
          _selectedTest = selectedTest;
        });
        Lang.lang = _selectedTest["keyword"].toString();
        BlocProvider.of<MainBloc>(context)
            .add(GetMainEvent(Lang.lang.toString()));
        print(Lang.lang);
      },
    ));
  }
}

class Lang {
  static String? lang = "RU";
}
