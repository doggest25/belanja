import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: itemArgs.name,
              child: Image.asset(itemArgs.imageUrl),
            ),
            SizedBox(height: 20),
            Text('Nama: ${itemArgs.name}', style: TextStyle(fontSize: 18)),
            Text('Harga: ${itemArgs.price}', style: TextStyle(fontSize: 18)),
            Text('Stok: ${itemArgs.stock}', style: TextStyle(fontSize: 18)),
            Text('Rating: ${itemArgs.rating} ⭐', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
