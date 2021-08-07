import 'package:novosti/models/news.dart';

class NewMassiv {
  static List<Modell> massiv = [];
  static List<Modell> filterList(String a, List<Modell> array) {
    array.forEach((element) {
      if (element.filter == a) {
        massiv.add(element);
      }
    });
    return massiv;
  }
}
