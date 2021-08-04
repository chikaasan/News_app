// class Filter {
//   int? id;
//   String? name;
//   String? lang;
//   bool? active;

//   Filter({this.active, this.id, this.lang, this.name});
// }

// class Allfilters extends Filter {
//   static List<Filter> types = [
//     Filter(id: 0, name: "Все", lang: "RU", active: true),
//     Filter(id: 1, name: "Экономика", lang: "RU", active: true),
//     Filter(id: 2, name: "Политика", lang: "RU", active: true),
//     Filter(id: 3, name: "Медецина", lang: "RU", active: true),
//     Filter(id: 4, name: "Отдых", lang: "RU", active: true),
//     Filter(id: 5, name: "Разное", lang: "RU", active: true)
//   ];
// }
// // To parse this JSON data, do
// //
// //     final filter = filterFromJson(jsonString);

import 'dart:convert';

List<Filter> filterFromJson(String str) =>
    List<Filter>.from(json.decode(str).map((x) => Filter.fromJson(x)));

String filterToJson(List<Filter> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Filter {
  Filter({
    this.name,
  });

  String? name;

  factory Filter.fromJson(Map<String, dynamic> json) => Filter(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}
