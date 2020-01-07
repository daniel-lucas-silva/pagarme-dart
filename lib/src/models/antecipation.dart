part of '_models.dart';

class Antecipation {
  int amount;
  int anticipationFee;
  String dateCreated;
  String dateUpdated;
  int fee;
  String id;
  String object;
  String paymentDate;
  String status;
  String timeframe;
  String type;

  Antecipation(
      {this.amount,
        this.anticipationFee,
        this.dateCreated,
        this.dateUpdated,
        this.fee,
        this.id,
        this.object,
        this.paymentDate,
        this.status,
        this.timeframe,
        this.type});

  Antecipation.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    anticipationFee = json['anticipation_fee'];
    dateCreated = json['date_created'];
    dateUpdated = json['date_updated'];
    fee = json['fee'];
    id = json['id'];
    object = json['object'];
    paymentDate = json['payment_date'];
    status = json['status'];
    timeframe = json['timeframe'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['amount'] = this.amount;
    data['anticipation_fee'] = this.anticipationFee;
    data['date_created'] = this.dateCreated;
    data['date_updated'] = this.dateUpdated;
    data['fee'] = this.fee;
    data['id'] = this.id;
    data['object'] = this.object;
    data['payment_date'] = this.paymentDate;
    data['status'] = this.status;
    data['timeframe'] = this.timeframe;
    data['type'] = this.type;
    return data;
  }
}
