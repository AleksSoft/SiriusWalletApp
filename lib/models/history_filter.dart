class HistoryFilter {
  String period;
  String transactionType;
  String asset;
  int timeFrom;
  int timeTo;

  HistoryFilter({
    this.period,
    this.transactionType,
    this.asset,
    this.timeFrom,
    this.timeTo,
  });

  HistoryFilter.fromJson(Map<String, dynamic> json) {
    period = json['period'];
    transactionType = json['transactionType'];
    asset = json['asset'];
    timeFrom = json['timeFrom'];
    timeTo = json['timeTo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['period'] = this.period;
    data['transactionType'] = this.transactionType;
    data['asset'] = this.asset;
    data['timeFrom'] = this.timeFrom;
    data['timeTo'] = this.timeTo;
    return data;
  }
}
