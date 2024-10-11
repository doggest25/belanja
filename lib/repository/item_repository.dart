// lib/repository/item_repository.dart
import 'package:belanja/models/item.dart';

class ItemRepository {
  static final List<Item> _items = [
    Item(
      id: 1,
      name: 'Sugar',
      price: 5000,
      imageUrl: 'assets/sugar.jpg',
      stock: 10,
      rating: 4.5,
      description: 'High quality refined sugar for your daily needs',
      category: 'Groceries',
    ),
    Item(
      id: 2,
      name: 'Salt',
      price: 2000,
      imageUrl: 'assets/salt.jpg',
      stock: 20,
      rating: 4.0,
      description: 'Premium iodized salt for cooking',
      category: 'Groceries',
    ),
    Item(
      id: 3,
      name: 'Rice',
      price: 15000,
      imageUrl: 'assets/rice.jpg',
      stock: 50,
      rating: 4.8,
      description: 'Premium quality rice',
      category: 'Groceries',
    ),
    Item(
      id: 4,
      name: 'Cooking Oil',
      price: 25000,
      imageUrl: 'assets/oil.jpg',
      stock: 30,
      rating: 4.3,
      description: 'Pure vegetable cooking oil',
      category: 'Groceries',
    ),
  ];

  static List<Item> get items => _items;

  static Item? getItemById(int id) {
    try {
      return _items.firstWhere((item) => item.id == id);
    } catch (e) {
      return null;
    }
  }
}
