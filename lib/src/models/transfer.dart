part of '_models.dart';

class Transfer {
  String object;
  int id;
  int amount;
  String type;
  String status;
  String sourceType;
  String sourceId;
  String targetType;
  String targetId;
  int fee;
  Null fundingDate;
  String fundingEstimatedDate;
  Null transactionId;
  String dateCreated;
  BankAccount bankAccount;
  Metadata metadata;

  Transfer(
      {this.object,
        this.id,
        this.amount,
        this.type,
        this.status,
        this.sourceType,
        this.sourceId,
        this.targetType,
        this.targetId,
        this.fee,
        this.fundingDate,
        this.fundingEstimatedDate,
        this.transactionId,
        this.dateCreated,
        this.bankAccount,
        this.metadata});

  Transfer.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    amount = json['amount'];
    type = json['type'];
    status = json['status'];
    sourceType = json['source_type'];
    sourceId = json['source_id'];
    targetType = json['target_type'];
    targetId = json['target_id'];
    fee = json['fee'];
    fundingDate = json['funding_date'];
    fundingEstimatedDate = json['funding_estimated_date'];
    transactionId = json['transaction_id'];
    dateCreated = json['date_created'];
    bankAccount = json['bank_account'] != null
        ? new BankAccount.fromJson(json['bank_account'])
        : null;
    metadata = json['metadata'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    data['id'] = this.id;
    data['amount'] = this.amount;
    data['type'] = this.type;
    data['status'] = this.status;
    data['source_type'] = this.sourceType;
    data['source_id'] = this.sourceId;
    data['target_type'] = this.targetType;
    data['target_id'] = this.targetId;
    data['fee'] = this.fee;
    data['funding_date'] = this.fundingDate;
    data['funding_estimated_date'] = this.fundingEstimatedDate;
    data['transaction_id'] = this.transactionId;
    data['date_created'] = this.dateCreated;
    if (this.bankAccount != null) {
      data['bank_account'] = this.bankAccount.toJson();
    }
    data['metadata'] = this.metadata;
    return data;
  }
}
