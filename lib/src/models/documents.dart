part of '_models.dart';

class Document {
  String object;
  String id;
  String type;
  String number;

  Document({
    this.object,
    this.id,
    this.type,
    this.number,
  });

  Document.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    type = json['type'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    data['id'] = this.id;
    data['type'] = this.type;
    data['number'] = this.number;
    return data;
  }
}
