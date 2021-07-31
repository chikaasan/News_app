class Filter {
  int? id;
  String? name;
  String? lang;
  bool? active;

  Filter({this.active, this.id, this.lang, this.name});
}

class Allfilters extends Filter {
  static List<Filter> types = [
    Filter(id: 0, name: "Все", lang: "RU", active: true),
    Filter(id: 1, name: "Экономика", lang: "RU", active: true),
    Filter(id: 2, name: "Политика", lang: "RU", active: true),
    Filter(id: 3, name: "Медецина", lang: "RU", active: true),
    Filter(id: 4, name: "Отдых", lang: "RU", active: true),
    Filter(id: 5, name: "Разное", lang: "RU", active: true)
  ];
}
