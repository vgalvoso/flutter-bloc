class Items {
  final int id;
  final String itemName;
  final String category;

  const Items(
      {required this.id, required this.itemName, required this.category});

  static Items fromJson(json) => Items(
        id: json['id'],
        itemName: json['itemName'],
        category: json['category'],
      );
}
