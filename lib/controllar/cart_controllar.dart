import 'package:dotech/model/cart_model.dart';
import 'package:flutter/material.dart';

class CartController extends ChangeNotifier{
  List<Product> _cartItems = [];

  double _totalPrice = 0.0;
  List<Product> get cartItems => _cartItems;
  double get totalprice=> _totalPrice;
  void addToCart(Product product) {
    _cartItems.add(product);
    _totalPrice += product.price;
    notifyListeners();
  }

}