import 'package:flutter/material.dart';
import 'food.dart';

class Shop extends ChangeNotifier{
  //food menu
    final List<Food> _foodMenu = [
    Food(name: "Salmon Sushi", price: "21.00", imagePath: "lib/image/sushi2.png", rating: "4.7"),
    Food(name: "Salmon", price: "25.00", imagePath: "lib/image/sushi.png", rating: "4.1"),
    Food(name: "Tuna", price: "20.00", imagePath: "lib/image/nigiri.png", rating: "4.1"),
  ];

  //customer cart
  List<Food>_cart = [];
  //getter methods
  // ignore: recursive_getters
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  //add to cart
  void addToCart(Food foodItem, int quantity){
    for (int i=0; i < quantity; i++){
      _cart.add(foodItem);
    }
    notifyListeners();
  }
  //remove from cart
  void removeFromCart(Food food){
    _cart.remove(food);
    	notifyListeners();
  }

  void clearCart() {}
}