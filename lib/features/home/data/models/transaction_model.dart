class HistoryTransactionModel {
  List<Transactions>? transactions;
  List<Deposits>? deposits;
  List<TransferFromMe>? transferFromMe;
  List<TransferToMe>? transferToMe;

  HistoryTransactionModel(
      {this.transactions,
        this.deposits,
        this.transferFromMe,
        this.transferToMe});

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
    if (json['transferFromMe'] != null) {
      transferFromMe = <TransferFromMe>[];
      json['transferFromMe'].forEach((v) {
        transferFromMe!.add(new TransferFromMe.fromJson(v));
      });
    }
    if (json['transferToMe'] != null) {
      transferToMe = <TransferToMe>[];
      json['transferToMe'].forEach((v) {
        transferToMe!.add(new TransferToMe.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.transactions != null) {
      data['transactions'] = this.transactions!.map((v) => v.toJson()).toList();
    }
    if (this.deposits != null) {
      data['deposits'] = this.deposits!.map((v) => v.toJson()).toList();
    }
    if (this.transferFromMe != null) {
      data['transferFromMe'] =
          this.transferFromMe!.map((v) => v.toJson()).toList();
    }
    if (this.transferToMe != null) {
      data['transferToMe'] = this.transferToMe!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Transactions {
  String? date;
  String? time;
  String? serviceName;
  dynamic cost;
  String? serviceType;

  Transactions(
      {this.date, this.time, this.serviceName, this.cost, this.serviceType});

  Transactions.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    time = json['time'];
    serviceName = json['serviceName'];
    cost = json['cost'];
    serviceType = json['serviceType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['time'] = this.time;
    data['serviceName'] = this.serviceName;
    data['cost'] = this.cost;
    data['serviceType'] = this.serviceType;
    return data;
  }
}

class Deposits {
  String? date;
  String? time;
  dynamic balance;

  Deposits({this.date, this.time, this.balance});

  Deposits.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    time = json['time'];
    balance = json['balance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['time'] = this.time;
    data['balance'] = this.balance;
    return data;
  }
}

class TransferFromMe {
  dynamic balance;
  String? date;
  String? time;
  String? fromUserFullName;
  String? toUserFullName;

  TransferFromMe(
      {this.balance,
        this.date,
        this.time,
        this.fromUserFullName,
        this.toUserFullName});

  TransferFromMe.fromJson(Map<String, dynamic> json) {
    balance = json['balance'];
    date = json['date'];
    time = json['time'];
    fromUserFullName = json['fromUserFullName'];
    toUserFullName = json['toUserFullName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['balance'] = this.balance;
    data['date'] = this.date;
    data['time'] = this.time;
    data['fromUserFullName'] = this.fromUserFullName;
    data['toUserFullName'] = this.toUserFullName;
    return data;
  }
}

class TransferToMe {
  dynamic balance;
  String? date;
  String? time;
  String? fromUserFullName;
  String? toUserFullName;

  TransferToMe(
      {this.balance,
        this.date,
        this.time,
        this.fromUserFullName,
        this.toUserFullName});

  TransferToMe.fromJson(Map<String, dynamic> json) {
    balance = json['balance'];
    date = json['date'];
    time = json['time'];
    fromUserFullName = json['fromUserFullName'];
    toUserFullName = json['toUserFullName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['balance'] = this.balance;
    data['date'] = this.date;
    data['time'] = this.time;
    data['fromUserFullName'] = this.fromUserFullName;
    data['toUserFullName'] = this.toUserFullName;
    return data;
  }
}
