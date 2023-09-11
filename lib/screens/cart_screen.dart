import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../components/ui_components.dart';
import '../models/item_model.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(context),
      body: Consumer<ItemModel>(
        builder: (context, value, child) {
          return ListView.builder(
              itemCount: value.cart_items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Container(
                    color: Color.fromARGB(86, 17, 255, 0),
                    height: 100,
                    child: Text(value.cart_items[index][0].toString()),
                  ),
                );
              });
        },
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
