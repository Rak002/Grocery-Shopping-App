import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatelessWidget {
  final PageController _controller = PageController(initialPage: 0);
  final List<Widget> introPages = [
    // First Screen
    Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 162, 32),
      body: ListView(
        shrinkWrap: true,
        children: [
          // Logo image
          Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
                bottom: 20,
              ),
              child: Image.asset('lib/images/fixed_images/logo.png')),
          // Column to contain the app name and about
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // App name
              Padding(
                padding: const EdgeInsets.only(
                  left: 35,
                  bottom: 30,
                ),
                child: Text(
                  "Placeholderline",
                  style: GoogleFonts.notoSans(
                    textStyle: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(200, 150, 255, 120),
                    ),
                  ),
                ),
              ),

              // About
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 60,
                  bottom: 10,
                ),
                child: Text(
                  "Oder groceries from the comfort of your home.\n\nGreat Services\n\nAuthorized sellers",
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
      // Swipe text
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          bottom: 30,
        ),
        child: Text(
          "Swipe >> ",
          textAlign: TextAlign.right,
          style: GoogleFonts.notoSans(
            textStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(200, 150, 255, 120),
            ),
          ),
        ),
      ),
    ),
    // 2nd screen
    Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'Page 2',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      // Swipe text
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          bottom: 30,
        ),
        child: Text(
          "Swipe >> ",
          textAlign: TextAlign.right,
          style: GoogleFonts.notoSans(
            textStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(149, 255, 255, 255),
            ),
          ),
        ),
      ),
    ),
    // 3rd screen
    Scaffold(
      backgroundColor: Color.fromARGB(255, 176, 99, 5),
      body: Center(
        child: Text(
          'Page 3',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      // Get Started button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          left: 200,
          bottom: 20,
        ),
        child: OutlinedButton(
          onPressed: () {},
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
    ),
  ];

  IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: _controller, children: [
        // First Screen
        Scaffold(
          backgroundColor: Color.fromARGB(255, 0, 162, 32),
          body: ListView(
            shrinkWrap: true,
            children: [
              // Logo image
              Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 10,
                    bottom: 20,
                  ),
                  child: Image.asset('lib/images/fixed_images/logo.png')),
              // Column to contain the app name and about
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // App name
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 35,
                      bottom: 30,
                    ),
                    child: Text(
                      "Placeholderline",
                      style: GoogleFonts.notoSans(
                        textStyle: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(200, 150, 255, 120),
                        ),
                      ),
                    ),
                  ),

                  // About
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 40,
                      right: 60,
                      bottom: 10,
                    ),
                    child: Text(
                      "Oder groceries from the comfort of your home.\n\nGreat Services\n\nAuthorized sellers",
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
          // Swipe text
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(
              right: 20,
              bottom: 30,
            ),
            child: Text(
              "Swipe >> ",
              textAlign: TextAlign.right,
              style: GoogleFonts.notoSans(
                textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(200, 150, 255, 120),
                ),
              ),
            ),
          ),
        ),
        // 2nd screen
        Scaffold(
          backgroundColor: Colors.blue,
          body: Center(
            child: Text(
              'Page 2',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          // Swipe text
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(
              right: 20,
              bottom: 30,
            ),
            child: Text(
              "Swipe >> ",
              textAlign: TextAlign.right,
              style: GoogleFonts.notoSans(
                textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(149, 255, 255, 255),
                ),
              ),
            ),
          ),
        ),
        // 3rd screen
        Scaffold(
          backgroundColor: Color.fromARGB(255, 176, 99, 5),
          body: Center(
            child: Text(
              'Page 3',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          // Next button
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 200,
              bottom: 20,
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
        ),
      ]),
    );
  }
}
