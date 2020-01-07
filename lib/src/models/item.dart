part of '_models.dart';

class Items {
  String object;
  String id;
  String title;
  int unitPrice;
  int quantity;
  Null category;
  bool tangible;
  Null venue;
  Null date;

  Items(
      {this.object,
        this.id,
        this.title,
        this.unitPrice,
        this.quantity,
        this.category,
        this.tangible,
        this.venue,
        this.date});

  Items.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    title = json['title'];
    unitPrice = json['unit_price'];
    quantity = json['quantity'];
    category = json['category'];
    tangible = json['tangible'];
    venue = json['venue'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    data['id'] = this.id;
    data['title'] = this.title;
    data['unit_price'] = this.unitPrice;
    data['quantity'] = this.quantity;
    data['category'] = this.category;
    data['tangible'] = this.tangible;
    data['venue'] = this.venue;
    data['date'] = this.date;
    return data;
  }
}
