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
  get forYouItemsGetter {
    for_you_items;
    most_ordered_items;
    new_prodcuts_items;
  }
}
