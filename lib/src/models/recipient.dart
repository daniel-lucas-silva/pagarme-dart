part of '_models.dart';

class Recipient {
  String object;
  String id;
  bool transferEnabled;
  Null lastTransfer;
  String transferInterval;
  int transferDay;
  bool automaticAnticipationEnabled;
  String automaticAnticipationType;
  Null automaticAnticipationDays;
  int automaticAnticipation1025Delay;
  int anticipatableVolumePercentage;
  String dateCreated;
  String dateUpdated;
  String postbackUrl;
  String status;
  Null statusReason;
  BankAccount bankAccount;
  RegisterInformation registerInformation;

  Recipient(
      {this.object,
        this.id,
        this.transferEnabled,
        this.lastTransfer,
        this.transferInterval,
        this.transferDay,
        this.automaticAnticipationEnabled,
        this.automaticAnticipationType,
        this.automaticAnticipationDays,
        this.automaticAnticipation1025Delay,
        this.anticipatableVolumePercentage,
        this.dateCreated,
        this.dateUpdated,
        this.postbackUrl,
        this.status,
        this.statusReason,
        this.bankAccount,
        this.registerInformation});

  Recipient.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    transferEnabled = json['transfer_enabled'];
    lastTransfer = json['last_transfer'];
    transferInterval = json['transfer_interval'];
    transferDay = json['transfer_day'];
    automaticAnticipationEnabled = json['automatic_anticipation_enabled'];
    automaticAnticipationType = json['automatic_anticipation_type'];
    automaticAnticipationDays = json['automatic_anticipation_days'];
    automaticAnticipation1025Delay = json['automatic_anticipation_1025_delay'];
    anticipatableVolumePercentage = json['anticipatable_volume_percentage'];
    dateCreated = json['date_created'];
    dateUpdated = json['date_updated'];
    postbackUrl = json['postback_url'];
    status = json['status'];
    statusReason = json['status_reason'];
    bankAccount = json['bank_account'] != null
        ? new BankAccount.fromJson(json['bank_account'])
        : null;
    registerInformation = json['register_information'] != null
        ? new RegisterInformation.fromJson(json['register_information'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    data['id'] = this.id;
    data['transfer_enabled'] = this.transferEnabled;
    data['last_transfer'] = this.lastTransfer;
    data['transfer_interval'] = this.transferInterval;
    data['transfer_day'] = this.transferDay;
    data['automatic_anticipation_enabled'] = this.automaticAnticipationEnabled;
    data['automatic_anticipation_type'] = this.automaticAnticipationType;
    data['automatic_anticipation_days'] = this.automaticAnticipationDays;
    data['automatic_anticipation_1025_delay'] =
        this.automaticAnticipation1025Delay;
    data['anticipatable_volume_percentage'] =
        this.anticipatableVolumePercentage;
    data['date_created'] = this.dateCreated;
    data['date_updated'] = this.dateUpdated;
    data['postback_url'] = this.postbackUrl;
    data['status'] = this.status;
    data['status_reason'] = this.statusReason;
    if (this.bankAccount != null) {
      data['bank_account'] = this.bankAccount.toJson();
    }
    if (this.registerInformation != null) {
      data['register_information'] = this.registerInformation.toJson();
    }
    return data;
  }
}

class RegisterInformation {
  String type;
  String documentNumber;
  String name;
  String siteUrl;
  String email;
  List<PhoneNumber> phoneNumbers;

  RegisterInformation(
      {this.type,
        this.documentNumber,
        this.name,
        this.siteUrl,
        this.email,
        this.phoneNumbers});

  RegisterInformation.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    documentNumber = json['document_number'];
    name = json['name'];
    siteUrl = json['site_url'];
    email = json['email'];
    if (json['phone_numbers'] != null) {
      phoneNumbers = new List<PhoneNumber>();
      json['phone_numbers'].forEach((v) {
        phoneNumbers.add(new PhoneNumber.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['document_number'] = this.documentNumber;
    data['name'] = this.name;
    data['site_url'] = this.siteUrl;
    data['email'] = this.email;
    if (this.phoneNumbers != null) {
      data['phone_numbers'] = this.phoneNumbers.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PhoneNumber {
  String ddd;
  String number;
  String type;

  PhoneNumber({this.ddd, this.number, this.type});

  PhoneNumber.fromJson(Map<String, dynamic> json) {
    ddd = json['ddd'];
    number = json['number'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ddd'] = this.ddd;
    data['number'] = this.number;
    data['type'] = this.type;
    return data;
  }
}
