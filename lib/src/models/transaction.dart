part of '_models.dart';

class Transaction {
  String object;
  String status;
  Null refuseReason;
  String statusReason;
  String acquirerResponseCode;
  String acquirerName;
  String acquirerId;
  String authorizationCode;
  Null softDescriptor;
  int tid;
  int nsu;
  String dateCreated;
  String dateUpdated;
  int amount;
  int authorizedAmount;
  int paidAmount;
  int refundedAmount;
  int installments;
  int id;
  int cost;
  String cardHolderName;
  String cardLastDigits;
  String cardFirstDigits;
  String cardBrand;
  Null cardPinMode;
  Null postbackUrl;
  String paymentMethod;
  String captureMethod;
  Null antifraudScore;
  Null boletoUrl;
  Null boletoBarcode;
  Null boletoExpirationDate;
  String referer;
  String ip;
  Null subscriptionId;
  Null phone;
  Null address;
  Customer customer;
  Billing billing;
  Shipping shipping;
  List<Items> items;
  CreditCard card;
  List<SplitRules> splitRules;
  AntiFraudMetadata antifraudMetadata;
  Null referenceKey;
  AntiFraudMetadata metadata;

  Transaction({this.object, this.status, this.refuseReason, this.statusReason, this.acquirerResponseCode, this.acquirerName, this.acquirerId, this.authorizationCode, this.softDescriptor, this.tid, this.nsu, this.dateCreated, this.dateUpdated, this.amount, this.authorizedAmount, this.paidAmount, this.refundedAmount, this.installments, this.id, this.cost, this.cardHolderName, this.cardLastDigits, this.cardFirstDigits, this.cardBrand, this.cardPinMode, this.postbackUrl, this.paymentMethod, this.captureMethod, this.antifraudScore, this.boletoUrl, this.boletoBarcode, this.boletoExpirationDate, this.referer, this.ip, this.subscriptionId, this.phone, this.address, this.customer, this.billing, this.shipping, this.items, this.card, this.splitRules, this.antifraudMetadata, this.referenceKey, this.metadata});

  Transaction.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    status = json['status'];
    refuseReason = json['refuse_reason'];
    statusReason = json['status_reason'];
    acquirerResponseCode = json['acquirer_response_code'];
    acquirerName = json['acquirer_name'];
    acquirerId = json['acquirer_id'];
    authorizationCode = json['authorization_code'];
    softDescriptor = json['soft_descriptor'];
    tid = json['tid'];
    nsu = json['nsu'];
    dateCreated = json['date_created'];
    dateUpdated = json['date_updated'];
    amount = json['amount'];
    authorizedAmount = json['authorized_amount'];
    paidAmount = json['paid_amount'];
    refundedAmount = json['refunded_amount'];
    installments = json['installments'];
    id = json['id'];
    cost = json['cost'];
    cardHolderName = json['card_holder_name'];
    cardLastDigits = json['card_last_digits'];
    cardFirstDigits = json['card_first_digits'];
    cardBrand = json['card_brand'];
    cardPinMode = json['card_pin_mode'];
    postbackUrl = json['postback_url'];
    paymentMethod = json['payment_method'];
    captureMethod = json['capture_method'];
    antifraudScore = json['antifraud_score'];
    boletoUrl = json['boleto_url'];
    boletoBarcode = json['boleto_barcode'];
    boletoExpirationDate = json['boleto_expiration_date'];
    referer = json['referer'];
    ip = json['ip'];
    subscriptionId = json['subscription_id'];
    phone = json['phone'];
    address = json['address'];
    customer = json['customer'] != null ? new Customer.fromJson(json['customer']) : null;
    billing = json['billing'] != null ? new Billing.fromJson(json['billing']) : null;
    shipping = json['shipping'] != null ? new Shipping.fromJson(json['shipping']) : null;
    if (json['items'] != null) {
      items = new List<Items>();
      json['items'].forEach((v) { items.add(new Items.fromJson(v)); });
    }
    card = json['card'] != null ? new CreditCard.fromJson(json['card']) : null;
    if (json['split_rules'] != null) {
      splitRules = new List<SplitRules>();
      json['split_rules'].forEach((v) { splitRules.add(new SplitRules.fromJson(v)); });
    }
    antifraudMetadata = json['antifraud_metadata'] != null ? new AntiFraudMetadata.fromJson(json['antifraud_metadata']) : null;
    referenceKey = json['reference_key'];
    metadata = json['metadata'] != null ? new AntiFraudMetadata.fromJson(json['metadata']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    data['status'] = this.status;
    data['refuse_reason'] = this.refuseReason;
    data['status_reason'] = this.statusReason;
    data['acquirer_response_code'] = this.acquirerResponseCode;
    data['acquirer_name'] = this.acquirerName;
    data['acquirer_id'] = this.acquirerId;
    data['authorization_code'] = this.authorizationCode;
    data['soft_descriptor'] = this.softDescriptor;
    data['tid'] = this.tid;
    data['nsu'] = this.nsu;
    data['date_created'] = this.dateCreated;
    data['date_updated'] = this.dateUpdated;
    data['amount'] = this.amount;
    data['authorized_amount'] = this.authorizedAmount;
    data['paid_amount'] = this.paidAmount;
    data['refunded_amount'] = this.refundedAmount;
    data['installments'] = this.installments;
    data['id'] = this.id;
    data['cost'] = this.cost;
    data['card_holder_name'] = this.cardHolderName;
    data['card_last_digits'] = this.cardLastDigits;
    data['card_first_digits'] = this.cardFirstDigits;
    data['card_brand'] = this.cardBrand;
    data['card_pin_mode'] = this.cardPinMode;
    data['postback_url'] = this.postbackUrl;
    data['payment_method'] = this.paymentMethod;
    data['capture_method'] = this.captureMethod;
    data['antifraud_score'] = this.antifraudScore;
    data['boleto_url'] = this.boletoUrl;
    data['boleto_barcode'] = this.boletoBarcode;
    data['boleto_expiration_date'] = this.boletoExpirationDate;
    data['referer'] = this.referer;
    data['ip'] = this.ip;
    data['subscription_id'] = this.subscriptionId;
    data['phone'] = this.phone;
    data['address'] = this.address;
    if (this.customer != null) {
      data['customer'] = this.customer.toJson();
    }
    if (this.billing != null) {
      data['billing'] = this.billing.toJson();
    }
    if (this.shipping != null) {
      data['shipping'] = this.shipping.toJson();
    }
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    if (this.card != null) {
      data['card'] = this.card.toJson();
    }
    if (this.splitRules != null) {
      data['split_rules'] = this.splitRules.map((v) => v.toJson()).toList();
    }
    if (this.antifraudMetadata != null) {
      data['antifraud_metadata'] = this.antifraudMetadata.toJson();
    }
    data['reference_key'] = this.referenceKey;
    if (this.metadata != null) {
      data['metadata'] = this.metadata.toJson();
    }
    return data;
  }
}
