import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:novosti/main_bloc/bloc/main_bloc.dart';

import 'package:novosti/models/filters.dart';
import 'package:novosti/screens/first_screen.dart';

class Kategory extends StatefulWidget {
  final List<Filter> filterList;
  Kategory(this.filterList);

  @override
  _Kategory createState() => _Kategory();
}

class _Kategory extends State<Kategory> {
  List<bool> select = [];
  // final bloc = FilterblocBloc(FilterRepository());
  @override
  void initState() {
    // bloc.add(GetFilterEvent(
    //     select = List.generate(widget.filterList.length, (index) => false)));
    select = List.generate(widget.filterList.length, (index) => false);
    select[0] = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.filterList.length,
        itemBuilder: (BuildContext context, index) {
          return SingleChildScrollView(
              child: Container(
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
                          widget.filterList.length, (index) => false);
                      select[0] = true;
                    } else if (index == 0) {
                      select = List.generate(
                          widget.filterList.length, (index) => false);
                      select[0] = true;
                    } else {
                      select[index] = !select[index];
                    }
                    if (select.every((element) => element == false)) {
                      select[0] = true;
                    }
                    if (index == 0) {
                      BlocProvider.of<MainBloc>(context).add(GetMainEvent(
                        Lang.lang,
                      ));
                    } else if (index != 0) {
                      BlocProvider.of<MainBloc>(context).add(GetMainEvent(
                          Lang.lang,
                          id: widget.filterList[index].id));
                    } else if (widget.filterList[index].id ==
                        widget.filterList[index].id) {
                      BlocProvider.of<MainBloc>(context)
                          .add(GetMainEvent(Lang.lang));
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                  decoration: BoxDecoration(
                      color: select[index] ? Color(0xff71C343) : Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    widget.filterList[index].name!,
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
          )));
        });
  }
}
