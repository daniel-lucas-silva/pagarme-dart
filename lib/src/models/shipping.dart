part of '_models.dart';

class Shipping {
  Address address;
  String object;
  int id;
  String name;
  int fee;
  String deliveryDate;
  bool expedited;

  Shipping(
      {this.address,
        this.object,
        this.id,
        this.name,
        this.fee,
        this.deliveryDate,
        this.expedited});

  Shipping.fromJson(Map<String, dynamic> json) {
    address =
    json['address'] != null ? new Address.fromJson(json['address']) : null;
    object = json['object'];
    id = json['id'];
    name = json['name'];
    fee = json['fee'];
    deliveryDate = json['delivery_date'];
    expedited = json['expedited'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.address != null) {
      data['address'] = this.address.toJson();
    }
    data['object'] = this.object;
    data['id'] = this.id;
    data['name'] = this.name;
    data['fee'] = this.fee;
    data['delivery_date'] = this.deliveryDate;
    data['expedited'] = this.expedited;
    return data;
  }
}
