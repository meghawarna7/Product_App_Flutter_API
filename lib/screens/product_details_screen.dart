import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  ProductDetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: Column(
        children: [
          Image.network(product.images),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(product.description),
          ),
          Text('Price: ${product.price}'),
          Text('Rating: ${product.rating}'),
        ],
      ),
    );
  }
}
