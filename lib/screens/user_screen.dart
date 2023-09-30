import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/ui_components.dart';

class userScreen extends StatelessWidget {
  const userScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Color.fromARGB(22, 0, 255, 8),
        shadowColor: Colors.transparent,
        leadingWidth: 90,
        leading: const Padding(
          padding: EdgeInsets.only(
            left: 10,
            top: 10,
            right: 10,
            bottom: 10,
          ),
          child: Icon(
            Icons.image,
            size: 90.0,
            color: Colors.green,
          ),
        ),
        title: Text(
          "User",
          style: GoogleFonts.notoSans(
            textStyle: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 41, 188, 0),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
