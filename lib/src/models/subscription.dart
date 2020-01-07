part of '_models.dart';

class Subscription {
  String object;
  Plan plan;
  int id;
  Transaction currentTransaction;
  String postbackUrl;
  String paymentMethod;
  Null currentPeriodStart;
  Null currentPeriodEnd;
  int charges;
  String status;
  String dateCreated;
  String phone;
  Address address;
  Customer customer;
  CreditCard card;
  Metadata metadata;

  Subscription({this.object, this.plan, this.id, this.currentTransaction, this.postbackUrl, this.paymentMethod, this.currentPeriodStart, this.currentPeriodEnd, this.charges, this.status, this.dateCreated, this.phone, this.address, this.customer, this.card, this.metadata});

  Subscription.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    plan = json['plan'] != null ? new Plan.fromJson(json['plan']) : null;
    id = json['id'];
    currentTransaction = json['current_transaction'] != null ? new Transaction.fromJson(json['current_transaction']) : null;
    postbackUrl = json['postback_url'];
    paymentMethod = json['payment_method'];
    currentPeriodStart = json['current_period_start'];
    currentPeriodEnd = json['current_period_end'];
    charges = json['charges'];
    status = json['status'];
    dateCreated = json['date_created'];
    phone = json['phone'];
    address = json['address'];
    customer = json['customer'] != null ? new Customer.fromJson(json['customer']) : null;
    card = json['card'];
    metadata = json['metadata'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    if (this.plan != null) {
      data['plan'] = this.plan.toJson();
    }
    data['id'] = this.id;
    if (this.currentTransaction != null) {
      data['current_transaction'] = this.currentTransaction.toJson();
    }
    data['postback_url'] = this.postbackUrl;
    data['payment_method'] = this.paymentMethod;
    data['current_period_start'] = this.currentPeriodStart;
    data['current_period_end'] = this.currentPeriodEnd;
    data['charges'] = this.charges;
    data['status'] = this.status;
    data['date_created'] = this.dateCreated;
    data['phone'] = this.phone;
    data['address'] = this.address;
    if (this.customer != null) {
      data['customer'] = this.customer.toJson();
    }
    data['card'] = this.card;
    data['metadata'] = this.metadata;
    return data;
  }
}
