import 'package:flutter/material.dart';
import '../models/product.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});
}

class CartService {
  static final List<CartItem> items = [];

  static void addToCart(Product product) {
    var existingItem = items.where((item) => item.product.id == product.id).firstOrNull;
    if (existingItem != null) {
      existingItem.quantity++;
    } else {
      items.add(CartItem(product: product));
    }
  }

  static void removeFromCart(Product product) {
    items.removeWhere((item) => item.product.id == product.id);
  }

  static int get totalCount {
    return items.fold(0, (sum, item) => sum + item.quantity);
  }

  static double get totalPrice {
    return items.fold(0, (sum, item) {
      String p = item.product.price.replaceAll('\$', '').replaceAll(',', '');
      return sum + (double.tryParse(p) ?? 0) * item.quantity;
    });
  }
}
