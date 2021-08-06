import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:novosti/components/loading.dart';
import 'package:novosti/components/picture.dart';
import 'package:novosti/contants/cusom_text.dart';
import 'package:novosti/info_bloc/bloc/info_bloc.dart';
import 'package:novosti/info_bloc/bloc/info_repository.dart';

class InfoScreen extends StatelessWidget {
  InfoScreen({this.id});
  final int? id;
  final bloc = InfoBloc(InfoRepository());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF6F6F6),
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color(0xffF6F6F6),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: BlocBuilder<InfoBloc, InfoState>(
            bloc: bloc..add(GetInfoEvent(id! + 3)),
            builder: (context, state) {
              if (state is InfoInitial) {
                return Container(child: Loading());
              } else if (state is InfoLoaded) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text(
                          state.data.headerTitle!,
                          style: TaskText.regular16a,
                          softWrap: true,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        child: Text(
                          "Дата: " + state.data.addDate!,
                          style: TaskText.regular14c,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: state.data.image!.length,
                          itemBuilder: (BuildContext context, index) {
                            return SingleChildScrollView(
                              child: Picture(state.data.image![index].url!),
                            );
                          }),
                      Container(
                        child: Text(
                          state.data.text!,
                          style: TaskText.regular14a,
                          softWrap: true,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                );
              } else {
                return Center(child: Text("OOps"));
              }
            },
          ),
        ));
  }
}
