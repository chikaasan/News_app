class NewsId {
  String? headerTitle;
  String? text;
  String? addDate;
  List<Image>? image;

  NewsId({this.headerTitle, this.text, this.addDate, this.image});

  NewsId.fromJson(Map<String, dynamic> json) {
    headerTitle = json['header_title'];
    text = json['text'];
    addDate = json['add_date'];
    if (json['image'] != null) {
      image = [];
      json['image'].forEach((v) {
        image!.add(new Image.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['header_title'] = this.headerTitle;
    data['text'] = this.text;
    data['add_date'] = this.addDate;
    if (this.image != null) {
      data['image'] = this.image!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Image {
  String? url;
  int? orderNum;

  Image({this.url, this.orderNum});

  Image.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    orderNum = json['order_num'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['order_num'] = this.orderNum;
    return data;
  }
}