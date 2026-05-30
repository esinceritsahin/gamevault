import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/product.dart';

class ApiService {
  Future<List<Product>> getProducts() async {
    try {
      final String response = await rootBundle.loadString('assets/products.json');
      final data = jsonDecode(response);
      final List products = data['data'];
      return products.map((json) => Product.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Veri çekilemedi: $e');
    }
  }
}
