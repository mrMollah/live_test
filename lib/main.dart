import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shopping List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoppingListPage(),
    );
  }
}

class ShoppingListPage extends StatelessWidget {
  final List<ShoppingItem> shoppingItems = [
    ShoppingItem(icon: Icons.food_bank, name: 'Milk'),
    ShoppingItem(icon: Icons.shopping_basket, name: 'Bread'),
    ShoppingItem(icon: Icons.local_grocery_store, name: 'Eggs'),
    ShoppingItem(icon: Icons.fastfood, name: 'Chicken'),
    ShoppingItem(icon: Icons.restaurant, name: 'Apples'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Add cart icon functionality here
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: shoppingItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(shoppingItems[index].icon),
            title: Text(shoppingItems[index].name),
            onTap: () {
              // Add item selection functionality here
            },
          );
        },
      ),
    );
  }
}

class ShoppingItem {
  final IconData icon;
  final String name;

  ShoppingItem({required this.icon, required this.name});
}
