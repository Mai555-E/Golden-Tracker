class Silver {
  final String name, symbol, updatedAt, updatedAtReadable;
  final num price;

  Silver({required this.name, required this.symbol, required this.updatedAt, required this.updatedAtReadable, required this.price});

  factory Silver.fromJson(Map<String, dynamic> json) {
    return Silver(name: json["name"], symbol: json["symbol"], updatedAt: json["updatedAt"], updatedAtReadable: json["updatedAtReadable"], price: json["price"]);
  }
}



/*
"name": "Gold",
    "price": 5043.200195,
    "symbol": "XAU",
    "updatedAt": "2026-02-14T01:44:44Z",
    "updatedAtReadable": "a few seconds ago"
*/