import 'dart:convert';

List<Coin> coinFromJson(String str) =>
    List<Coin>.from(json.decode(str).map((x) => Coin.fromJson(x)));

class Coin {
  String symbol;
  double price24H;
  double volume24H;
  double lastTradePrice;

  Coin({
    required this.symbol,
    required this.price24H,
    required this.volume24H,
    required this.lastTradePrice,
  });

  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
        symbol: json["symbol"],
        price24H: json['price_24h'],
        volume24H: json['volume_24h'],
        lastTradePrice: json['last_trade_price']);
  }
}
