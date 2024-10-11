// lib/main.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/item_detail_page.dart';
import 'package:belanja/repository/item_repository.dart';

import 'models/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Initialize GoRouter as a static final variable
  static final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      // Home Route
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => HomePage(),
        routes: [
          // Item Detail Route with unique ID
          GoRoute(
            path: 'item/:id',
            name: 'itemDetail',
            builder: (context, state) {
              final String idStr = state.pathParameters['id']!;
              final int id = int.tryParse(idStr) ?? -1;
              final Item? item = ItemRepository.getItemById(id);
              if (item == null) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Item Not Found'),
                  ),
                  body: const Center(
                    child: Text('Item not found'),
                  ),
                );
              }
              return ItemDetailPage(item: item);
            },
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: Center(
        child: Text(state.error.toString()),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Toko Sembako',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
