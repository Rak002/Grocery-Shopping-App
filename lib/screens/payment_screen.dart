import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/ui_components.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(context),
      body: Text("Pay"),
      bottomNavigationBar: Footer(),
    );
  }
}
