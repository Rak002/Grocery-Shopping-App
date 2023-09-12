import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/ui_components.dart';
import 'package:provider/provider.dart';
import '../models/item_model.dart';

class PaymentScreen_ extends StatefulWidget {
  // A staful Wrapper to the PaymentScreen
  @override
  PaymentScreen createState() => PaymentScreen();
}

class PaymentScreen extends State<PaymentScreen_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(context),
      body: Consumer<ItemModel>(
        builder: (context, value, child) {
          List payment_methods = [
            "UPI",
            "Online Banking",
            "Phone Wallet",
            "Pay on Delivery",
          ];
          String selected_method = "";
          return Scaffold(
            appBar: AppBar(
              title: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  "Payment",
                  style: GoogleFonts.notoSans(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
              backgroundColor: const Color.fromARGB(151, 13, 156, 0),
              shadowColor: Colors.transparent,
            ),
            body: Container(
                height: 500,
                child: ListView.builder(
                    itemCount: payment_methods.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.only(
                            top: ((index == 0) ? 30 : 10),
                            bottom: 15,
                            left: 20,
                            right: 20,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(68, 30, 181, 0),
                              border: Border.all(
                                color: Color.fromARGB(
                                    255, 16, 165, 0), // Border color
                                width: 4.0, // Border width
                              ), // Change the color as desired
                              borderRadius: BorderRadius.circular(
                                  20), // Adjust the radius for roundness
                            ),
                            height: 90,
                            child: ListTile(
                              title: Text(payment_methods[index]),
                              leading: Radio<String>(
                                value: payment_methods[index],
                                groupValue: selected_method,
                                onChanged: (String? value) {
                                  setState(() {
                                    selected_method = value!;
                                    print(selected_method);
                                  });
                                },
                              ),
                            ),
                          ));
                    })),
          );
        },
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
