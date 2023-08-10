class Product {
  late final String id;
  late final String name;
  late final String category;
  late final List<String> images;
  late final String description;
  late final double price;
  late final int quantity;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.images,
    required this.description,
    required this.price,
    required this.quantity,
  });
}
