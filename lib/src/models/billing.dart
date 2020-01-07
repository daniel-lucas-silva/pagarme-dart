part of '_models.dart';

class Billing {
  Address address;
  String object;
  int id;
  String name;

  Billing({this.address, this.object, this.id, this.name});

  Billing.fromJson(Map<String, dynamic> json) {
    address =
    json['address'] != null ? new Address.fromJson(json['address']) : null;
    object = json['object'];
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.address != null) {
      data['address'] = this.address.toJson();
    }
    data['object'] = this.object;
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
