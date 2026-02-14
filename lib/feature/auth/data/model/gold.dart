class Gold {
  final String name, symbol, updatedAt, updatedAtReadable;
  final num price;

  Gold({required this.name, required this.symbol, required this.updatedAt, required this.updatedAtReadable, required this.price});

  factory Gold.fromJson(Map<String, dynamic> json) {
    return Gold(name: json["name"], symbol: json["symbol"], updatedAt: json["updatedAt"], updatedAtReadable: json["updatedAtReadable"], price: json["price"]);
  }
}
