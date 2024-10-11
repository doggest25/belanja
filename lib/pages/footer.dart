// footer.dart
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final String name;
  final String nim;

  const Footer({Key? key, required this.name, required this.nim}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.grey[300],
      child: Column(
        children: [
          Text('Nama: $name', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('NIM: $nim'),
        ],
      ),
    );
  }
}
