class CoinValue {
  String? priceUsd;
  int? time;
  String? date;

  CoinValue({
    required this.priceUsd,
    required this.time,
    required this.date,
  });

  CoinValue.fromJson(Map<String, dynamic> json) {
    priceUsd = json['priceUsd'];
    time = json['time'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['priceUsd'] = priceUsd;
    data['time'] = time;
    data['date'] = date;
    return data;
  }
}