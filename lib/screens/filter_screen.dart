// import 'package:flutter/material.dart';
// import 'package:novosti/contants/cusom_text.dart';


// class FilterScreen extends StatelessWidget {
//   ValueNotifier<bool> bool1 = ValueNotifier(true);
//   ValueNotifier<bool> bool2 = ValueNotifier(true);
//   ValueNotifier<bool> bool3 = ValueNotifier(true);
//   ValueNotifier<bool> bool4 = ValueNotifier(true);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffE5E5E5),
//       appBar: AppBar(
//         backgroundColor: Color(0xffE5E5E5),
//         elevation: 0,
//         title: Text(
//           "Фильтр",
//           style: TaskText.regular20a,
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(top: 17, right: 20),
//             child: InkWell(
//               child: Text(
//                 "Сбросить",
//                 style: TaskText.regular14,
//               ),
//               onTap: () {},
//             ),
//           )
//         ],
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             ValueListenableBuilder(
//               valueListenable: bool1, 
//               builder: (context, value, child) =>
//                 CheckboxListTile(
//                     title: Text(
//                       "Собрания и конференции",
//                       style: TaskText.regular16,
//                     ),
//                     controlAffinity: ListTileControlAffinity.platform,
//                     value: bool1.value,
//                     onChanged: (bool? value) {
//                       bool1.value = value;
//                     }),
              
//             ),
//             Divider(
//               height: 0.5,
//               color: Colors.black,
//             ),
//             ValueListenableBuilder(
//               valueListenable: bool2, 
//               builder: (context, value, child) =>
//                 CheckboxListTile(
//                     title: Text(
//                       "Собрания и конференции",
//                       style: TaskText.regular16,
//                     ),
//                     controlAffinity: ListTileControlAffinity.platform,
//                     value: bool2.value,
//                     onChanged: (bool value) {
//                       bool2.value = value;
//                     }),
              
//             ),
//             Divider(
//               height: 0.5,
//               color: Colors.black,
//             ),
//             ValueListenableBuilder(
//               valueListenable: bool3, 
//               builder: (context, value, child) =>
//                 CheckboxListTile(
//                     title: Text(
//                       "Собрания и конференции",
//                       style: TaskText.regular16,
//                     ),
//                     controlAffinity: ListTileControlAffinity.platform,
//                     value: bool3.value,
//                     onChanged: (bool value) {
//                       bool3.value = value;
//                     }),
              
//             ),
//             Divider(
//               height: 0.5,
//               color: Colors.black,
//             ),
//             ValueListenableBuilder(
//               valueListenable: bool4, 
//               builder: (context, value, child) =>
//                 CheckboxListTile(
//                     title: Text(
//                       "Собрания и конференции",
//                       style: TaskText.regular16,
//                     ),
//                     controlAffinity: ListTileControlAffinity.platform,
//                     value: bool4.value,
//                     onChanged: (bool value) {
//                       bool4.value = value;
//                     }),
              
//             ),
//             Divider(
//               height: 0.5,
//               color: Colors.black,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
