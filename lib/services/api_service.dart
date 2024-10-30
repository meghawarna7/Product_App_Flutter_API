import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/product.dart';

Future<List<Product>> fetchProducts() async {
  final response = await http.get(Uri.parse('https://api.npoint.io/a907f54f4d95e9e31711'));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((product) => Product.fromJson(product)).toList();
  } else {
    throw Exception('Failed to load products');
  }
}
