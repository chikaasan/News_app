// import 'dart:ffi';

// import 'package:flutter/material.dart';
// import 'package:novosti/models/filters.dart';
// import 'package:novosti/models/news.dart';

// class Kategory extends StatefulWidget {
//   final Filter data;

//   Kategory(this.data);

//   @override
//   _Kategory createState() => _Kategory();
// }

// class _Kategory extends State<Kategory> {
//   List<bool> select = [];
//   @override
//   void initState() {
//     select = List.generate(News.types.length, (index) => false);
//     select[0] = true;
//     super.initState();
//   }

//   @override
//   ValueNotifier<Color> _color = ValueNotifier(Colors.white);
//   ValueNotifier<Color> _colorText = ValueNotifier(Colors.black);
//   Widget build(BuildContext context) {
//     // if (widget.data.id == 0) {
//     return Row(
//       children: [
//         InkWell(
//           onTap: () {
//             setState(() {
//               if (index != 0) {
//                 select[0] = false;

//                 select[index] = !select[index];
//               } else if (index == 0) {
//                 select = List.generate(News.types.length, (index) => false);
//                 select[0] = true;
//               } else {
//                 select[index] = !select[index];
//                 print("object");
//               }
//               if (select.every((element) => element == false)) {
//                 select[0] = true;
//               }
//             });
//           },
//           child: Container(
//             margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
//             decoration: BoxDecoration(
//                 color: select[index] ? Color(0xff71C343) : Colors.white,
//                 borderRadius: BorderRadius.circular(20)),
//             child: Text(
//               widget.data.name!,
//               style: TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w400,
//                   color: select[index] ? Colors.white : Colors.grey),
//             ),
//           ),
//           // child: Kategory(Allfilters.types[index]),
//         )
//       ],
//     );
//   }
// }
//     // } else {
//     // return Row(
//     //   children: [
//     //     InkWell(
//     //         onTap: () {
//     //           if (_color.value == Colors.white) {
//     //             _colorText.value = Colors.white;
//     //             _color.value = Color(0xff71C343);
//     //           } else {
//     //             _color.value = Colors.white;
//     //             _colorText.value = Colors.black;
//     //           }
//     //         },
//     //         child: ValueListenableBuilder(
//     //           valueListenable: _color,
//     //           builder: (context, value, child) => Container(
//     //             padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
//     //             decoration: BoxDecoration(
//     //                 color: _color.value,
//     //                 borderRadius: BorderRadius.circular(20)),
//     //             child: Text(widget.data.name!,
//     //                 style: TextStyle(
//     //                     fontSize: 14,
//     //                     fontWeight: FontWeight.w400,
//     //                     color: _colorText.value)),
//     //           ),
//     //         )),
//     //     SizedBox(
//     //       width: 8,
//     //     )
//     //   ],
//     // );

// // }
