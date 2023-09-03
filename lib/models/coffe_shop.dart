import 'package:flutter/material.dart';
import 'coffe.dart';
class CoffeeShop extends ChangeNotifier{
  // Coffe sale
  final List<Coffee> _shop = [
    Coffee(name: "Long Black",
     price: "200", 
     imagepath: "lib/images/black.png"),

     Coffee(name: "Latte",
     price: "250", 
     imagepath: "lib/images/latte.png"),

     Coffee(name: "Espresso",
     price: "300", 
     imagepath: "lib/images/espresso.png"),

     Coffee(name: "Iced Coffe",
     price: "240", 
     imagepath: "lib/images/iced.png"),
  ];

// user cart
  List<Coffee> _userCart=[];

// get coffe list
  List<Coffee> get coffeeShop => _shop;

// get cart list

  List<Coffee> get usercart => _userCart;

// Add item to cart

void addItemToCart(Coffee coffee){
  _userCart.add(coffee);
  notifyListeners();
}

//remove item from cart
void removeItemToCart(Coffee coffee){
  _userCart.remove(coffee);
  notifyListeners();
}

}