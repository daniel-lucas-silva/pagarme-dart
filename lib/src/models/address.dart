part of '_models.dart';

class Address {
  String object;
  String street;
  Null complementary;
  String streetNumber;
  String neighborhood;
  String city;
  String state;
  String zipcode;
  String country;
  int id;

  Address({
    this.object,
    this.street,
    this.complementary,
    this.streetNumber,
    this.neighborhood,
    this.city,
    this.state,
    this.zipcode,
    this.country,
    this.id,
  });

  Address.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    street = json['street'];
    complementary = json['complementary'];
    streetNumber = json['street_number'];
    neighborhood = json['neighborhood'];
    city = json['city'];
    state = json['state'];
    zipcode = json['zipcode'];
    country = json['country'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    data['street'] = this.street;
    data['complementary'] = this.complementary;
    data['street_number'] = this.streetNumber;
    data['neighborhood'] = this.neighborhood;
    data['city'] = this.city;
    data['state'] = this.state;
    data['zipcode'] = this.zipcode;
    data['country'] = this.country;
    data['id'] = this.id;
    return data;
  }
}
