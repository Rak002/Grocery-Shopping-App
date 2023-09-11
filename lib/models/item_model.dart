import 'package:flutter/material.dart';

class ItemModel extends ChangeNotifier {
  final List for_you_items = [
    // [itemName	quantity	price	inStock	rating]
    ["apple", "12", "30", "4", "4.1"],
    ["banana", "12", "30", "8", "3.5"],
    ["pickles", "1jar", "30", "5", "4"],
    ["bread", "1pack", "30", "5", "4"],
  ];
  final List most_ordered_items = [
    // [itemName	quantity	price	inStock	rating]
    ["bread", "1pack", "30", "4", "4.1"],
    ["milk", "1pack", "40", "8", "3.5"],
    ["cereal", "1box", "10", "5", "4"],
    ["tomatoes", "12", "30", "5", "4"],
  ];
  final List new_prodcuts_items = [
    // [itemName	quantity	price	inStock	rating]
    ["cheese", "1pack", "50", "4", "4.1"],
    ["lettuce", "6", "10", "8", "3.5"],
    ["bread", "6", "30", "5", "4"],
    ["rice", "1bag", "60", "5", "4"],
  ];
  get ItemsGetter {
    for_you_items;
    most_ordered_items;
    new_prodcuts_items;
  }

  List cart_items = [
    // [itemName,quantity,price,inStock,rating]
  ];

  get CartItemGetter => cart_items;

  void addItemToCart(String sectionName, String itemName) {
    if (sectionName == "For You") {
      for (int i = 0; i < for_you_items.length; i++) {
        if (for_you_items[i][0] == itemName) {
          cart_items.add(for_you_items[i]);
        }
      }
    } else if (sectionName == "Most Ordered") {
      for (int i = 0; i < most_ordered_items.length; i++) {
        if (most_ordered_items[i][0] == itemName) {
          cart_items.add(most_ordered_items[i]);
        }
      }
    } else if (sectionName == "New Products") {
      for (int i = 0; i < new_prodcuts_items.length; i++) {
        if (new_prodcuts_items[i][0] == itemName) {
          cart_items.add(new_prodcuts_items[i]);
        }
      }
    }
    print("cart_items : $cart_items");
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    cart_items.removeAt(index);
    notifyListeners();
    print("cart_items : $cart_items");
  }

  String calculateTotal() {
    double total = 0;
    for (int i = 0; i < cart_items.length; i++) {
      total += double.parse(cart_items[i][2]);
    }
    return total.toStringAsFixed(2);
  }
}
