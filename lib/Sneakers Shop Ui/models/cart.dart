import 'package:flutter/material.dart';
import 'package:modern_smart_home_ui/Sneakers%20Shop%20Ui/models/shoe.dart';

class Cart extends ChangeNotifier{

  List<Shoe> shoeShop = [
    Shoe(
        name: "Zoom Freak",
        descrpition: "Mens Shoe",
        imagePath: "icons/air-jordan.png",
        price: "3900",
    ),
    Shoe(
        name: "Air-Jordan",
        descrpition: "Mens Shoe",
        imagePath: "icons/nike.png",
        price: "2400"
    ),
    Shoe(
        name: "kD Tryes",
        descrpition: "Mens Shoe",
        imagePath: "icons/orangenike.com.png",
        price: "2700"
    ),
    Shoe(
        name: "Air-Force",
        descrpition: "Mens Shoe",
        imagePath: "icons/air.png",
        price: "3900",
    ),
  ];

  // list of items on user cart

 List<Shoe> userCart = [];

  // get list of shoe for sale
 List<Shoe> getShoeList() {
   return shoeShop;
 }

  // get cart
 List<Shoe> getUserCart(){
   return userCart;
 }

  // add items to cart
  void addItemCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
