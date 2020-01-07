part of '_models.dart';

class Plan {
  String object;
  int id;
  int amount;
  int days;
  String name;
  int trialDays;
  String dateCreated;
  List<String> paymentMethods;
  Null color;
  Null charges;
  int installments;
  Null invoiceReminder;

  Plan(
      {this.object,
        this.id,
        this.amount,
        this.days,
        this.name,
        this.trialDays,
        this.dateCreated,
        this.paymentMethods,
        this.color,
        this.charges,
        this.installments,
        this.invoiceReminder});

  Plan.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    amount = json['amount'];
    days = json['days'];
    name = json['name'];
    trialDays = json['trial_days'];
    dateCreated = json['date_created'];
    paymentMethods = json['payment_methods'].cast<String>();
    color = json['color'];
    charges = json['charges'];
    installments = json['installments'];
    invoiceReminder = json['invoice_reminder'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    data['id'] = this.id;
    data['amount'] = this.amount;
    data['days'] = this.days;
    data['name'] = this.name;
    data['trial_days'] = this.trialDays;
    data['date_created'] = this.dateCreated;
    data['payment_methods'] = this.paymentMethods;
    data['color'] = this.color;
    data['charges'] = this.charges;
    data['installments'] = this.installments;
    data['invoice_reminder'] = this.invoiceReminder;
    return data;
  }
}
