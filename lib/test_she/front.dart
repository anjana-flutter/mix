import 'package:flutter/material.dart';

class ProductCatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Catalog'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: Image.network(product.imageUrl),
            title: Text(product.name),
            subtitle: Text(product.description),
            trailing: Text('\$${product.price.toStringAsFixed(2)}'),
            onTap: () {
// TODO: Navigate to product details page
            },
          );
        },
      ),
    );
  }
}
class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({required this.name, required this.description, required this.price, required this.imageUrl});
}

final List<Product> products = [
  Product(
    name: 'Product 1',
    description: 'Description of Product 1',
    price: 9.99,
    imageUrl: 'https://example.com/product1.jpg',
  ),
  Product(
    name: 'Product 2',
    description: 'Description of Product 2',
    price: 19.99,
    imageUrl: 'https://example.com/product2.jpg',
  ),
// Add more products here...
];