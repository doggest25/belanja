// lib/models/item.dart
class Item {
  final int id; // Unique identifier
  final String name;
  final int price;
  final String imageUrl;
  final int stock;
  final double rating;
  final String description;
  final String category;

  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.stock,
    required this.rating,
    required this.description,
    required this.category,
  });

  String get formattedPrice =>
      'Rp ${price.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}';

  String get stockStatus {
    if (stock > 20) return 'In Stock';
    if (stock > 0) return 'Limited';
    return 'Out of Stock';
  }
}
