class Coins {
  String? id;
  String? rank;
  String? symbol;
  String? name;
  String? supply;
  String? maxSupply;
  String? marketCapUsd;
  String? volumeUsd24Hr;
  String? priceUsd;
  String? changePercent24Hr;
  String? vwap24Hr;
  String? explorer;

  Coins({
    required this.id,
    required this.rank,
    required this.symbol,
    required this.name,
    required this.supply,
    required this.maxSupply,
    required this.marketCapUsd,
    required this.volumeUsd24Hr,
    required this.priceUsd,
    required this.changePercent24Hr,
    required this.vwap24Hr,
    required this.explorer,
  });

  Coins.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    rank = json['rank'];
    symbol = json['symbol'];
    name = json['name'];
    supply = json['supply'];
    maxSupply = json['maxSupply'];
    marketCapUsd = json['marketCapUsd'];
    volumeUsd24Hr = json['volumeUsd24Hr'];
    priceUsd = json['priceUsd'];
    changePercent24Hr = json['changePercent24Hr'];
    vwap24Hr = json['vwap24Hr'];
    explorer = json['explorer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['rank'] = rank;
    data['symbol'] = symbol;
    data['name'] = name;
    data['supply'] = supply;
    data['maxSupply'] = maxSupply;
    data['marketCapUsd'] = marketCapUsd;
    data['volumeUsd24Hr'] = volumeUsd24Hr;
    data['priceUsd'] = priceUsd;
    data['changePercent24Hr'] = changePercent24Hr;
    data['vwap24Hr'] = vwap24Hr;
    data['explorer'] = explorer;
    return data;
  }
}