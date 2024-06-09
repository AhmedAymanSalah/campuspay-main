class HistoryTransactionModel {
  List<Transactions>? transactions;
  List<Deposits>? deposits;
  // List<>? transferFromMe;
  // List<>? transferToMe;

  HistoryTransactionModel(
      {this.transactions,
        this.deposits,
        // this.transferFromMe,
        // this.transferToMe
      });

  HistoryTransactionModel.fromJson(Map<String, dynamic> json) {
    if (json['transactions'] != null) {
      transactions = <Transactions>[];
      json['transactions'].forEach((v) {
        transactions!.add(new Transactions.fromJson(v));
      });
    }
    if (json['deposits'] != null) {
      deposits = <Deposits>[];
      json['deposits'].forEach((v) {
        deposits!.add(new Deposits.fromJson(v));
      });
    }
    // if (json['transferFromMe'] != null) {
    //   transferFromMe = <Null>[];
    //   json['transferFromMe'].forEach((v) {
    //     transferFromMe!.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['transferToMe'] != null) {
    //   transferToMe = <Null>[];
    //   json['transferToMe'].forEach((v) {
    //     transferToMe!.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.transactions != null) {
      data['transactions'] = this.transactions!.map((v) => v.toJson()).toList();
    }
    if (this.deposits != null) {
      data['deposits'] = this.deposits!.map((v) => v.toJson()).toList();
    }
    // if (this.transferFromMe != null) {
    //   data['transferFromMe'] =
    //       this.transferFromMe!.map((v) => v.toJson()).toList();
    // }
    // if (this.transferToMe != null) {
    //   data['transferToMe'] = this.transferToMe!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class Transactions {
  int? id;
  String? date;
  Null? latitude;
  Null? longitude;
  String? status;
  String? userId;
  int? serviceId;
  Service? service;
  Null? user;

  Transactions(
      {this.id,
        this.date,
        this.latitude,
        this.longitude,
        this.status,
        this.userId,
        this.serviceId,
        this.service,
        this.user});

  Transactions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    status = json['status'];
    userId = json['userId'];
    serviceId = json['serviceId'];
    service =
    json['service'] != null ? new Service.fromJson(json['service']) : null;
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['status'] = this.status;
    data['userId'] = this.userId;
    data['serviceId'] = this.serviceId;
    if (this.service != null) {
      data['service'] = this.service!.toJson();
    }
    data['user'] = this.user;
    return data;
  }
}

class Service {
  int? id;
  String? name;
  String? description;
  String? type;
  double? cost;
  int? squadYear;
  String? collegeName;
  Null? icon;
  Null? fileName;
  Null? filePath;

  Service(
      {this.id,
        this.name,
        this.description,
        this.type,
        this.cost,
        this.squadYear,
        this.collegeName,
        this.icon,
        this.fileName,
        this.filePath});

  Service.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    type = json['type'];
    cost = json['cost'];
    squadYear = json['squadYear'];
    collegeName = json['collegeName'];
    icon = json['icon'];
    fileName = json['fileName'];
    filePath = json['filePath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['type'] = this.type;
    data['cost'] = this.cost;
    data['squadYear'] = this.squadYear;
    data['collegeName'] = this.collegeName;
    data['icon'] = this.icon;
    data['fileName'] = this.fileName;
    data['filePath'] = this.filePath;
    return data;
  }
}

class Deposits {
  int? id;
  String? userId;
  String? sessionId;
  double? balance;
  String? date;

  Deposits({this.id, this.userId, this.sessionId, this.balance, this.date});

  Deposits.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    sessionId = json['sessionId'];
    balance = json['balance'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userId'] = this.userId;
    data['sessionId'] = this.sessionId;
    data['balance'] = this.balance;
    data['date'] = this.date;
    return data;
  }
}