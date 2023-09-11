import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/models/item_model.dart';
import 'package:provider/provider.dart';
import 'screens/intro_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ItemModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Grocery Shopping App',
        home: IntroScreen(),
      ),
    );
  }
}
