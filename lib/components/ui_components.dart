import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../models/item_model.dart';
import '../screens/home_screen.dart';
import '../screens/cart_screen.dart';
import '../screens/payment_screen.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:io';

Widget SectionTiles(
    int index_, List items, String sectionName, BuildContext _context) {
  Widget itemImage = Image.asset(
    "lib/images/var_images/${items[index_][0]}.png",
    errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
      return Image.asset('lib/images/var_images/not_found.png');
    },
  );

  return InkWell(
    child: Padding(
        padding: const EdgeInsets.only(
          left: 5,
          right: 5,
          top: 5,
          bottom: 5,
        ),
        child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          /*appBar: AppBar(
            title: Text(
              "${capitalizeWords(items[index_][0])}",
              style: GoogleFonts.notoSans(
                textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 36, 164, 0),
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            toolbarHeight: 40,
          ),*/
          floatingActionButton: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(0),
              shape: CircleBorder(),
              foregroundColor: Color.fromARGB(255, 59, 118, 255),
            ),
            onPressed: () {
              Provider.of<ItemModel>(_context, listen: false)
                  .addItemToCart(sectionName, index_);
            },
            child: Text(
              "+",
              style: GoogleFonts.notoSans(
                textStyle: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Align(
              alignment: Alignment.center,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15), child: itemImage),
            ),
          ),
          bottomNavigationBar: Container(
              height: 70,
              color: Colors.transparent,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "${capitalizeWords(items[index_][0])}",
                                      style: GoogleFonts.notoSans(
                                        textStyle: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 36, 164, 0),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "  ${items[index_][3]} left",
                                      style: GoogleFonts.notoSans(
                                        textStyle: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(221, 65, 178, 0),
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                            Expanded(
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "₹${items[index_][2]}",
                                      style: GoogleFonts.notoSans(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 65, 178, 0),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      " - ${items[index_][1]}",
                                      style: GoogleFonts.notoSans(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(170, 65, 178, 0),
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                          ]),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 5,
                        bottom: 5,
                      ),
                      child: CircularPercentIndicator(
                        radius: 18.0,
                        lineWidth: 6.0,
                        percent: double.parse(items[index_][4]) / 5.0,
                        center: Text(
                          "${items[index_][4]}",
                          style: GoogleFonts.notoSans(
                            textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(221, 65, 178, 0),
                            ),
                          ),
                        ),
                        progressColor: Colors.green,
                      ),
                    ),
                  ),
                ],
              )),
        )),
  );
}

class CustomSectionsScrollview extends StatelessWidget {
  final List<String> sectionNames;
  CustomSectionsScrollview(this.sectionNames);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: sectionNames.length,
      itemBuilder: (context, index) {
        return Wrap(children: [
          Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 50,
              top: ((index == 0) ? 30 : 10),
              bottom: 5,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 41, 187, 0),
                borderRadius: BorderRadius.circular(20),
              ),
              height: 40,
              width: 1000,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 2,
                  left: 30,
                ),
                child: Text(
                  sectionNames[index],
                  style: GoogleFonts.notoSans(
                    textStyle: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 232, 255, 226),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 5,
              bottom: 5,
            ),
            child: Container(
              color: Colors.transparent,
              height: 350,
              child: CustomSections(sectionNames[index]),
            ),
          ),
        ]);
      },
    );
  }
}

class CustomSections extends StatelessWidget {
  String section_name;
  CustomSections(this.section_name);

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemModel>(builder: (context, value, child) {
      List items = [];
      if (section_name == "For You") {
        items = value.for_you_items;
      } else if (section_name == "Most Ordered") {
        items = value.most_ordered_items;
      } else if (section_name == "New Products") {
        items = value.new_prodcuts_items;
      }
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
              bottom: 10,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(99, 89, 255, 0),
              ),
              width: 240,
              child: SectionTiles(index, items, section_name, context),
            ),
          );
        },
      );
    });
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        color: Colors.green,
        child: Row(
          children: [
            // Home Button
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const HomeScreen();
                  }));
                },
                splashColor: Colors.transparent,
                child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Container(
                        width: 50,
                        child: Image.asset(
                            'lib/images/fixed_images/home_icon.png'))),
              ),
            ),
            // Search Button
            Expanded(
              child: InkWell(
                onTap: () {
                  // navigate to search page
                },
                splashColor: Colors.transparent,
                child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Container(
                        width: 50,
                        child: Image.asset(
                            'lib/images/fixed_images/search_icon.png'))),
              ),
            ),
            // Cart Button
            Expanded(
              child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const CartScreen();
                    }));
                  },
                  splashColor: Colors.transparent,
                  child: Consumer<ItemModel>(builder: (context, value, child) {
                    return Scaffold(
                      backgroundColor: Colors.transparent,
                      floatingActionButtonLocation:
                          FloatingActionButtonLocation.endTop,
                      floatingActionButton: (value.cart_items.length > 0)
                          ? (Padding(
                              padding: EdgeInsets.only(
                                top: 7,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                                width: 30,
                                height: 22,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${value.cart_items.length}",
                                      style: GoogleFonts.notoSans(
                                        textStyle: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    )),
                              ),
                            ))
                          : (Container()),
                      body: Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 10,
                              bottom: 10,
                            ),
                            child: Container(
                                width: 50,
                                child: Image.asset(
                                    'lib/images/fixed_images/cart_icon.png'))),
                      ),
                    );
                  })),
            ),
            // Pay button
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return PaymentScreen();
                  }));
                },
                splashColor: Colors.transparent,
                child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Container(
                        width: 50,
                        child: Image.asset(
                            'lib/images/fixed_images/pay_icon.png'))),
              ),
            ),
          ],
        ));
  }
}

AppBar Header(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.green,
    toolbarHeight: 60,
    title: Padding(
        padding: const EdgeInsets.only(
          left: 0,
          right: 0,
          top: 60,
          bottom: 60,
        ),
        child: Container(
            height: 55,
            child: Image.asset('lib/images/fixed_images/logo1.png'))),
    actions: [
      InkWell(
        onTap: () {
          // navigate to notification page
        },
        splashColor: Colors.transparent,
        child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
              bottom: 10,
            ),
            child: Container(
                width: 50,
                child:
                    Image.asset('lib/images/fixed_images/hp_notif_icon.png'))),
      ),
      InkWell(
        onTap: () {
          // navigate to user info page
        },
        splashColor: Colors.transparent,
        child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 15,
              top: 10,
              bottom: 10,
            ),
            child: Container(
                width: 50,
                child:
                    Image.asset('lib/images/fixed_images/hp_user_icon.png'))),
      ),
    ],
  );
}
