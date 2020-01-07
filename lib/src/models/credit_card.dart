part of '_models.dart';

class CreditCard {
  String object;
  String id;
  String dateCreated;
  String dateUpdated;
  String brand;
  String holderName;
  String firstDigits;
  String lastDigits;
  String country;
  String fingerprint;
  Null customer;
  bool valid;
  String expirationDate;

  CreditCard(
      {this.object,
        this.id,
        this.dateCreated,
        this.dateUpdated,
        this.brand,
        this.holderName,
        this.firstDigits,
        this.lastDigits,
        this.country,
        this.fingerprint,
        this.customer,
        this.valid,
        this.expirationDate});

  CreditCard.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    dateCreated = json['date_created'];
    dateUpdated = json['date_updated'];
    brand = json['brand'];
    holderName = json['holder_name'];
    firstDigits = json['first_digits'];
    lastDigits = json['last_digits'];
    country = json['country'];
    fingerprint = json['fingerprint'];
    customer = json['customer'];
    valid = json['valid'];
    expirationDate = json['expiration_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    data['id'] = this.id;
    data['date_created'] = this.dateCreated;
    data['date_updated'] = this.dateUpdated;
    data['brand'] = this.brand;
    data['holder_name'] = this.holderName;
    data['first_digits'] = this.firstDigits;
    data['last_digits'] = this.lastDigits;
    data['country'] = this.country;
    data['fingerprint'] = this.fingerprint;
    data['customer'] = this.customer;
    data['valid'] = this.valid;
    data['expiration_date'] = this.expirationDate;
    return data;
  }
}
