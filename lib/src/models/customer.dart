part of '_models.dart';

class Customer {
  String object;
  int id;
  String externalId;
  String type;
  String country;
  Null documentNumber;
  String documentType;
  String name;
  String email;
  List<String> phoneNumbers;
  Null bornAt;
  String birthday;
  Null gender;
  String dateCreated;
  List<Document> documents;
  List<Address> addresses;
  List<String> phones;

  Customer(
      {this.object,
        this.id,
        this.externalId,
        this.type,
        this.country,
        this.documentNumber,
        this.documentType,
        this.name,
        this.email,
        this.phoneNumbers,
        this.bornAt,
        this.birthday,
        this.gender,
        this.dateCreated,
        this.documents,
        this.addresses,
        this.phones});

  Customer.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    externalId = json['external_id'];
    type = json['type'];
    country = json['country'];
    documentNumber = json['document_number'];
    documentType = json['document_type'];
    name = json['name'];
    email = json['email'];
    phoneNumbers = json['phone_numbers'].cast<String>();
    bornAt = json['born_at'];
    birthday = json['birthday'];
    gender = json['gender'];
    dateCreated = json['date_created'];
    if (json['documents'] != null) {
      documents = new List<Document>();
      json['documents'].forEach((v) {
        documents.add(new Document.fromJson(v));
      });
    }
    if (json['addresses'] != null) {
      addresses = new List<Null>();
      json['addresses'].forEach((v) {
        addresses.add(new Address.fromJson(v));
      });
    }
    if (json['phones'] != null) {
      phones = new List<String>();
      json['phones'].forEach((v) {
        phones.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    data['id'] = this.id;
    data['external_id'] = this.externalId;
    data['type'] = this.type;
    data['country'] = this.country;
    data['document_number'] = this.documentNumber;
    data['document_type'] = this.documentType;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone_numbers'] = this.phoneNumbers;
    data['born_at'] = this.bornAt;
    data['birthday'] = this.birthday;
    data['gender'] = this.gender;
    data['date_created'] = this.dateCreated;
    if (this.documents != null) {
      data['documents'] = this.documents.map((v) => v.toJson()).toList();
    }
    if (this.addresses != null) {
      data['addresses'] = this.addresses.map((v) => v.toJson()).toList();
    }
    if (this.phones != null) {
      data['phones'] = this.phones;
    }
    return data;
  }
}

