part of '_models.dart';

class Payable {
  String object;
  int id;
  String status;
  int amount;
  int fee;
  int anticipationFee;
  int installment;
  int transactionId;
  String splitRuleId;
  Null bulkAnticipationId;
  String recipientId;
  String paymentDate;
  Null originalPaymentDate;
  String type;
  String paymentMethod;
  String dateCreated;

  Payable(
      {this.object,
        this.id,
        this.status,
        this.amount,
        this.fee,
        this.anticipationFee,
        this.installment,
        this.transactionId,
        this.splitRuleId,
        this.bulkAnticipationId,
        this.recipientId,
        this.paymentDate,
        this.originalPaymentDate,
        this.type,
        this.paymentMethod,
        this.dateCreated});

  Payable.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    status = json['status'];
    amount = json['amount'];
    fee = json['fee'];
    anticipationFee = json['anticipation_fee'];
    installment = json['installment'];
    transactionId = json['transaction_id'];
    splitRuleId = json['split_rule_id'];
    bulkAnticipationId = json['bulk_anticipation_id'];
    recipientId = json['recipient_id'];
    paymentDate = json['payment_date'];
    originalPaymentDate = json['original_payment_date'];
    type = json['type'];
    paymentMethod = json['payment_method'];
    dateCreated = json['date_created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    data['id'] = this.id;
    data['status'] = this.status;
    data['amount'] = this.amount;
    data['fee'] = this.fee;
    data['anticipation_fee'] = this.anticipationFee;
    data['installment'] = this.installment;
    data['transaction_id'] = this.transactionId;
    data['split_rule_id'] = this.splitRuleId;
    data['bulk_anticipation_id'] = this.bulkAnticipationId;
    data['recipient_id'] = this.recipientId;
    data['payment_date'] = this.paymentDate;
    data['original_payment_date'] = this.originalPaymentDate;
    data['type'] = this.type;
    data['payment_method'] = this.paymentMethod;
    data['date_created'] = this.dateCreated;
    return data;
  }
}
