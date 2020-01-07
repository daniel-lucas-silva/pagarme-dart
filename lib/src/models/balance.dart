part of '_models.dart';

class Balance {
  String object;
  int waitingFunds;
  int available;
  int transferred;

  Balance({this.object, this.waitingFunds, this.available, this.transferred});

  Balance.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    waitingFunds = json['waiting_funds'] != null
        ? json['waiting_funds']['amount']
        : null;
    available = json['available'] != null
        ? json['available']['amount']
        : null;
    transferred = json['transferred'] != null
        ? json['transferred']['amount']
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    if (this.waitingFunds != null) {
      data['waiting_funds']['amount'] = this.waitingFunds;
    }
    if (this.available != null) {
      data['available']['amount'] = this.available;
    }
    if (this.transferred != null) {
      data['transferred']['amount'] = this.transferred;
    }
    return data;
  }
}


class BalanceOperation {
  String object;
  int id;
  String status;
  String type;
  int amount;
  int fee;
  String dateCreated;
  Movement movement;

  BalanceOperation(
      {this.object,
        this.id,
        this.status,
        this.type,
        this.amount,
        this.fee,
        this.dateCreated,
        this.movement});

  BalanceOperation.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    status = json['status'];
    type = json['type'];
    amount = json['amount'];
    fee = json['fee'];
    dateCreated = json['date_created'];
    movement = json['movement_object'] != null
        ? new Movement.fromJson(json['movement_object'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    data['id'] = this.id;
    data['status'] = this.status;
    data['type'] = this.type;
    data['amount'] = this.amount;
    data['fee'] = this.fee;
    data['date_created'] = this.dateCreated;
    if (this.movement != null) {
      data['movement_object'] = this.movement.toJson();
    }
    return data;
  }
}

class Movement {
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
  Null accrualDate;
  String dateCreated;

  Movement(
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
        this.accrualDate,
        this.dateCreated});

  Movement.fromJson(Map<String, dynamic> json) {
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
    accrualDate = json['accrual_date'];
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
    data['accrual_date'] = this.accrualDate;
    data['date_created'] = this.dateCreated;
    return data;
  }
}
