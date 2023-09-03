class BillModel {
  String title, datetime, type;
  double price;
  BillModel({
    required this.title,
    required this.price,
    required this.datetime,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return {
      "title": title,
      "price": price,
      "datetime": datetime,
      "type": type,
    };
  }

  factory BillModel.fromMap(Map<String, dynamic> map) {
    return BillModel(
      title: map["title"],
      price: map["price"],
      datetime: map["datetime"],
      type: map["type"].toString().toLowerCase(),
    );
  }
}
