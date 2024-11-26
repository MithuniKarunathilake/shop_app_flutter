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
  void addItemToCart(int index) {
    print('Adding item: ${_shopItems[index][0]}');
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove item from the cart
  void removeItemFromCart(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total price
String calculateTotal(){
    double totalPrice = 0;
    for(int i = 0; i< _cartItems.length; i++){
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
}
}