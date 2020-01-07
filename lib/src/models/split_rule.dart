part of '_models.dart';

class SplitRules {
  String object;
  String id;
  bool liable;
  Null amount;
  int percentage;
  String recipientId;
  bool chargeRemainder;
  bool chargeProcessingFee;
  String dateCreated;
  String dateUpdated;

  SplitRules({this.object, this.id, this.liable, this.amount, this.percentage, this.recipientId, this.chargeRemainder, this.chargeProcessingFee, this.dateCreated, this.dateUpdated});

  SplitRules.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    liable = json['liable'];
    amount = json['amount'];
    percentage = json['percentage'];
    recipientId = json['recipient_id'];
    chargeRemainder = json['charge_remainder'];
    chargeProcessingFee = json['charge_processing_fee'];
    dateCreated = json['date_created'];
    dateUpdated = json['date_updated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    data['id'] = this.id;
    data['liable'] = this.liable;
    data['amount'] = this.amount;
    data['percentage'] = this.percentage;
    data['recipient_id'] = this.recipientId;
    data['charge_remainder'] = this.chargeRemainder;
    data['charge_processing_fee'] = this.chargeProcessingFee;
    data['date_created'] = this.dateCreated;
    data['date_updated'] = this.dateUpdated;
    return data;
  }
}
