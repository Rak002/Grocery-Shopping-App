import 'package:flutter/material.dart';

String capitalizeWords(String input) {
  // To Capitalize all first letters in string
  List<String> words = input.split(" ");
  for (int i = 0; i < words.length; i++) {
    if (words[i].isNotEmpty) {
      words[i] = words[i][0].toUpperCase() + words[i].substring(1);
    }
  }
  return words.join(" ");
}

class ItemModel extends ChangeNotifier {
  final List for_you_items = [
    // [itemName	quantity	price	inStock	rating]
    ["bread", "1pack", "40", "5", "4.1"],
    ["apple", "12", "100", "4", "4.5"],
    ["mustard oil", "1l", "160", "5", "4.4"],
    ["banana", "12", "80", "8", "3.5"],
    ["pickles", "1jar", "150", "5", "4"],
  ];
  final List most_ordered_items = [
    // [itemName	quantity	price	inStock	rating]
    ["milk", "1pack", "40", "8", "4.5"],
    ["cereal", "1box", "150", "5", "4.8"],
    ["panner", "250g", "80", "4", "3.8"],
    ["tomatoes", "12", "80", "5", "4.4"],
    ["bread", "1pack", "35", "4", "3.8"],
  ];
  final List new_prodcuts_items = [
    // [itemName	quantity	price	inStock	rating]
    ["cheese", "1pack", "59", "4", "4.0"],
    ["lettuce", "250g", "50", "8", "3.5"],
    ["bread", "1pack", "45", "5", "4.5"],
    ["rice", "1bag", "30", "5", "4.2"],
    ["tofu", "1/2lb", "40", "3", "3"],
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

  void addItemToCart(String sectionName, int index) {
    if (sectionName == "For You") {
      cart_items.add(for_you_items[index]);
    } else if (sectionName == "Most Ordered") {
      cart_items.add(most_ordered_items[index]);
    } else if (sectionName == "New Products") {
      cart_items.add(new_prodcuts_items[index]);
    }

    if (cart_items.length != 0 && paid) {
      setToNotPaid();
    }
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    cart_items.removeAt(index);
    notifyListeners();
  }

  void clearCart() {
    cart_items = [];
    notifyListeners();
  }

  String calculateTotal() {
    double total = 0;
    for (int i = 0; i < cart_items.length; i++) {
      total += double.parse(cart_items[i][2]);
    }
    return total.toStringAsFixed(2);
  }

  List payment_methods = [
    "UPI",
    "Credit_Debit_Card",
    "Phone_Wallet",
    "Pay_on_Delivery",
  ];

  int selected_method = -1;

  bool paid = false;

  get paymentGetter {
    payment_methods;
    selected_method;
    paid;
  }

  void setSelectedMethod(int index) {
    selected_method = index;
    notifyListeners();
  }

  void pay() {
    if (selected_method >= 0 && cart_items.length >= 1) {
      paid = true;
      clearCart();
      notifyListeners();
    }
  }

  void setToNotPaid() {
    paid = false;
    notifyListeners();
  }
}
