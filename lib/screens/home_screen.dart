import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                    child: Image.asset(
                        'lib/images/fixed_images/hp_notif_icon.png'))),
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
                    child: Image.asset(
                        'lib/images/fixed_images/hp_user_icon.png'))),
          ),
        ],
      ),
      body: CustomSectionsScrollview([
        [
          Text("1"),
          Text("2"),
          Text("3"),
          Text("4"),
          Text("5"),
          Text("6"),
        ],
        [
          Text("7"),
          Text("8"),
          Text("9"),
          Text("10"),
          Text("11"),
          Text("12"),
        ],
        [
          Text("13"),
          Text("Lindfbdbdfdbe"),
          Text("14"),
          Text("Lindfbdbdfdbe"),
          Text("Linexvbbddf1"),
          Text("Lindfbdbdfdbe"),
        ],
        [
          Text("Linexvbbddf1"),
          Text("Lindfbdbdfdbe"),
          Text("Linexvbbddf1"),
          Text("Lindfbdbdfdbe"),
          Text("Linexvbbddf1"),
          Text("Lindfbdbdfdbe"),
        ],
        [
          Text("Linexvbbddf1"),
          Text("Lindfbdbdfdbe"),
          Text("Linexvbbddf1"),
          Text("Lindfbdbdfdbe"),
          Text("Linexvbbddf1"),
          Text("Lindfbdbdfdbe"),
        ],
        [
          Text("Linexvbbddf1"),
          Text("Lindfbdbdfdbe"),
          Text("Linexvbbddf1"),
          Text("Lindfbdbdfdbe"),
          Text("Linexvbbddf1"),
          Text("Lindfbdbdfdbe"),
        ]
      ], [
        "Section1",
        "Section2",
        "Section3",
        "Section4",
        "Section5",
        "Section6",
      ]),
      bottomNavigationBar: Footer(),
    );
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
            Expanded(
              child: InkWell(
                onTap: () {
                  // navigate to home page
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
            Expanded(
              child: InkWell(
                onTap: () {
                  // navigate to cart page
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
                            'lib/images/fixed_images/cart_icon.png'))),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  // navigate to payment page
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

class CustomSectionsScrollview extends StatelessWidget {
  final List<List<Widget>> listofwidgetList;
  final List<String> sectionNames;
  CustomSectionsScrollview(this.listofwidgetList, this.sectionNames);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: listofwidgetList.length,
      itemBuilder: (context, index) {
        return Wrap(children: [
          Padding(
            padding: EdgeInsets.only(
              left: 50,
              right: 10,
              top: ((index == 0) ? 30 : 10),
              bottom: 5,
            ),
            child: Text(sectionNames[index]),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 5,
              bottom: 5,
            ),
            child: Container(
              color: Colors.blue,
              height: 350,
              child: CustomSections(listofwidgetList[index]),
            ),
          ),
        ]);
      },
    );
  }
}

class CustomSections extends StatelessWidget {
  final List<Widget> widgetList;
  CustomSections(this.widgetList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: widgetList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 10,
            top: 10,
            bottom: 10,
          ),
          child: Container(
            color: Color.fromARGB(255, 255, 134, 134),
            width: 240,
            child: widgetList[index],
          ),
        );
      },
    );
  }
}
