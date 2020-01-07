part of '_models.dart';

class BankAccount {
  String object;
  int id;
  String bankCode;
  String agencia;
  String agenciaDv;
  String conta;
  String contaDv;
  String type;
  String documentType;
  String documentNumber;
  String legalName;
  bool chargeTransferFees;
  String dateCreated;

  BankAccount(
      {this.object,
        this.id,
        this.bankCode,
        this.agencia,
        this.agenciaDv,
        this.conta,
        this.contaDv,
        this.type,
        this.documentType,
        this.documentNumber,
        this.legalName,
        this.chargeTransferFees,
        this.dateCreated});

  BankAccount.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    bankCode = json['bank_code'];
    agencia = json['agencia'];
    agenciaDv = json['agencia_dv'];
    conta = json['conta'];
    contaDv = json['conta_dv'];
    type = json['type'];
    documentType = json['document_type'];
    documentNumber = json['document_number'];
    legalName = json['legal_name'];
    chargeTransferFees = json['charge_transfer_fees'];
    dateCreated = json['date_created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    data['id'] = this.id;
    data['bank_code'] = this.bankCode;
    data['agencia'] = this.agencia;
    data['agencia_dv'] = this.agenciaDv;
    data['conta'] = this.conta;
    data['conta_dv'] = this.contaDv;
    data['type'] = this.type;
    data['document_type'] = this.documentType;
    data['document_number'] = this.documentNumber;
    data['legal_name'] = this.legalName;
    data['charge_transfer_fees'] = this.chargeTransferFees;
    data['date_created'] = this.dateCreated;
    return data;
  }
}
