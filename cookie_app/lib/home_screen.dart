import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  Color c1 = Color(0xffEA796B);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // here the desired height
        child: AppBar(
          backgroundColor: Colors.blue,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              child: IconButton(
                icon: Icon(Icons.menu),
                tooltip: 'Show Photo',
                onPressed: () {},
              ),
            ),
          ],
          title: Text("Liza's space"),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 40),
              child: Text(
                'Hey Liza,',
                style: GoogleFonts.lato(fontSize: 40),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              height: 400,
              width: 500,
              child: Row(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: SvgPicture.asset('images/i3.svg',
                          height: 150, width: 150),
                    ),
                  ),

                  //child: Padding(
                  // padding: const EdgeInsets.only(top: 5, right: 10),
                  Container(
                    padding: EdgeInsets.only(top: 170),
                    child: Column(
                      children: [
                        Text(
                          'Woof! How are you',
                          style: GoogleFonts.lato(fontSize: 16.5),
                        ),
                        Text(
                          'holding up,pal?',
                          style: GoogleFonts.lato(fontSize: 16.5),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 450),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(127, 127, 213, 1),
                    Color.fromRGBO(134, 168, 231, 1),
                    Color.fromRGBO(145, 234, 228, 1)
                  ]),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                height: 400,
                width: 390,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "Your Appointments",
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "You have no appointments scheduled for today",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(234, 131, 131, 0.9),
                          // borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: const Text('Book session',
                            style: TextStyle(fontSize: 15)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40),
                      child: SvgPicture.asset('images/i4.svg',
                          height: 180, width: 180),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 900),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(255, 175, 189, 1),
                    Color.fromRGBO(15, 52, 67, 1),
                  ]),
                ),
                height: 400,
                width: 390,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "Your stats",
                        style: GoogleFonts.lato(
                            textStyle:
                                TextStyle(fontSize: 30, color: Colors.white)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "Let's see how you've been doing...",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 5, top: 3),
                      child: Text(
                        "Analysis in short: Sad but relaxed",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(234, 131, 131, 0.9),
                          // borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: const Text('View stats',
                            style: TextStyle(fontSize: 15)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: SvgPicture.asset('images/i5.svg',
                          height: 230, width: 230),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 1350),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    // Color.fromRGBO(119, 161, 211, 1),
                    Color.fromRGBO(121, 201, 202, 1),
                    Color.fromRGBO(230, 132, 174, 1),
                  ]),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                height: 400,
                width: 390,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "Meet Cookie",
                        style: GoogleFonts.lato(
                            textStyle:
                                TextStyle(fontSize: 30, color: Colors.white)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "Let's see what cookie is upto..",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 5, top: 3),
                      child: Text(
                        "While we wake him up,why don't you take a deep breath?",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(234, 131, 131, 0.9),
                          // borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: const Text('View stats',
                            style: TextStyle(fontSize: 15)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 15),
                      child: SvgPicture.asset('images/i7.svg',
                          height: 200, width: 200),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 1350),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    // Color.fromRGBO(119, 161, 211, 1),
                    Color.fromRGBO(121, 201, 202, 1),
                    Color.fromRGBO(230, 132, 174, 1),
                  ]),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                height: 400,
                width: 390,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "Meet Cookie",
                        style: GoogleFonts.lato(
                            textStyle:
                                TextStyle(fontSize: 30, color: Colors.white)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "Let's see what cookie is upto..",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 5, top: 3),
                      child: Text(
                        "While we wake him up,why don't you take a deep breath.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(234, 131, 131, 0.9),
                          // borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: const Text('View stats',
                            style: TextStyle(fontSize: 15)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 15),
                      child: SvgPicture.asset('images/i7.svg',
                          height: 200, width: 200),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Doc'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              title: Text('Stat'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.spa),
              title: Text('Meet Cookie'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text('Chat'),
              backgroundColor: Colors.blue,
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}
