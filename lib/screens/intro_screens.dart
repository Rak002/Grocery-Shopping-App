import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatelessWidget {
  final PageController _controller = PageController(initialPage: 0);

  IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 162, 32),
      body: ListView(
        shrinkWrap: true,
        children: [
          // Logo image
          Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 25,
                bottom: 20,
              ),
              child: Image.asset('lib/images/fixed_images/logo.png')),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 35,
                  bottom: 10,
                ),
                child: Text(
                  "Shop Smart,",
                  style: GoogleFonts.notoSans(
                    textStyle: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(200, 150, 255, 120),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 35,
                    bottom: 20,
                  ),
                  child: Text(
                    "Shop Swift!",
                    style: GoogleFonts.notoSans(
                      textStyle: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(200, 150, 255, 120),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 60,
                  bottom: 10,
                ),
                child: Text(
                  "Grocery Made Easy\nSecure Payment\nFast Delivery",
                  style: GoogleFonts.notoSans(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(150, 150, 255, 120),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      // Next button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          left: 40,
          bottom: 30,
          right: 40,
        ),
        child: OutlinedButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
          style: OutlinedButton.styleFrom(
            fixedSize: Size(70, 50),
            backgroundColor: Color.fromARGB(40, 255, 255, 255),
            side: const BorderSide(
                width: 3.0, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          child: Text(
            'Get Started',
            style: GoogleFonts.notoSans(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
