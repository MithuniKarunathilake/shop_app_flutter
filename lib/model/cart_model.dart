import 'package:flutter/cupertino.dart';

class CartModel extends ChangeNotifier{
  //List of items
  final List _shopItems = [
    //itemName, itemPrice, imagePath, rating
    ["Avocado","250.00", "assets/avacado.png", 4],
    ["Banana","110.00", "assets/banana.jpg", 4.2],
    ["Chicken","395.00", "assets/chicken.jpg", 4.8],
    ["Water","125.00", "assets/water.jpg", 3.8],
  ];

  //list of cart items
  List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  //add item to the cart

  //remove item from the cart

  //calculate total price
}