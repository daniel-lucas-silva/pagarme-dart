part of '_models.dart';

class Refund {
  String object;
  String id;
  int amount;
  String type;
  String status;
  Null chargeFeeRecipientId;
  Null bankAccountId;
  String transactionId;
  String dateCreated;
  _Metadata metadata;

  Refund(
      {this.object,
        this.id,
        this.amount,
        this.type,
        this.status,
        this.chargeFeeRecipientId,
        this.bankAccountId,
        this.transactionId,
        this.dateCreated,
        this.metadata});

  Refund.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    amount = json['amount'];
    type = json['type'];
    status = json['status'];
    chargeFeeRecipientId = json['charge_fee_recipient_id'];
    bankAccountId = json['bank_account_id'];
    transactionId = json['transaction_id'];
    dateCreated = json['date_created'];
    metadata = json['metadata'] != null
        ? new _Metadata.fromJson(json['metadata'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    data['id'] = this.id;
    data['amount'] = this.amount;
    data['type'] = this.type;
    data['status'] = this.status;
    data['charge_fee_recipient_id'] = this.chargeFeeRecipientId;
    data['bank_account_id'] = this.bankAccountId;
    data['transaction_id'] = this.transactionId;
    data['date_created'] = this.dateCreated;
    if (this.metadata != null) {
      data['metadata'] = this.metadata.toJson();
    }
    return data;
  }
}

class _Metadata {
  String idProduto;

  _Metadata({this.idProduto});

  _Metadata.fromJson(Map<String, dynamic> json) {
    idProduto = json['idProduto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idProduto'] = this.idProduto;
    return data;
  }
}
