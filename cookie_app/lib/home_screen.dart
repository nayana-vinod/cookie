import 'package:cookieapp/AR.dart';
import 'package:cookieapp/chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final tabs=[
    Ar_page,
    Chat_page,
    HomeScreen,
    Ar_page,
    Chat_page
  ];
  Color c1 = Color(0xffEA796B);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0), // here the desired height
        child: AppBar(
          backgroundColor: Color.fromRGBO(255,192,180,1),
          leading: Builder(
            builder: (BuildContext context) {
              /*return IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );*/
              return SvgPicture.asset('images/i9.svg');
              
            },
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              child: IconButton(
                icon: Icon(Icons.menu),
                padding: EdgeInsets.only(top:10,right:20),
                iconSize: 30,
                tooltip: 'Show Photo',
                onPressed: () {},
              ),
          
            ),
          ],
          title: Text("Liza's space"),
        ),
      ),
      
      body: 
      SingleChildScrollView(
         scrollDirection: Axis.vertical,

        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 40),
              child: Text(
                'Hey Liza,',
                style: TextStyle(fontSize: 29),
              ),
            ),
            Container(
              height: 600,
              width: 600,
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left:20,top:90),
                      child: SvgPicture.asset('images/i0.svg',
                          height: 260, width: 270),
                    ),
                  ),

                 
                  Container(
                    width:500,
                    padding: EdgeInsets.only(top: 50,left:70,bottom:50),
                        child:Text(
                          'Woof! How are you holding up, pal?',
                          style:TextStyle( fontSize: 18),
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
                        style:
                              TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "You have no appointments scheduled for today",
                        textAlign: TextAlign.center,
                        style:
                              TextStyle(fontSize: 20, color: Colors.white),
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
                        style: 
                                TextStyle(fontSize: 30, color: Colors.white)),
                      ),
                    
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "Let's see how you've been doing...",
                        textAlign: TextAlign.center,
                        style: 
                              TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
      
                    Container(
                      padding: EdgeInsets.only(bottom: 5, top: 3),
                      child: Text(
                        "Analysis in short: Sad but relaxed",
                        textAlign: TextAlign.center,
                        style: 
                              TextStyle(fontSize: 20, color: Colors.white),
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
                      
                      child: SvgPicture.asset('images/i5.svg',
                          height: 230, width: 230),
                    ),
                  ],
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 1800,bottom:60),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    // Color.fromRGBO(119, 161, 211, 1),
                    Color.fromRGBO(255, 216, 155, 1),
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
                        "Talk with Cookie",
                        style: 
                                TextStyle(fontSize: 30, color: Colors.white)),
                      ),
                    
                    Container(
                      padding: EdgeInsets.only(top: 5,bottom: 5),
                      child: Text(
                        "While we get Cookie ready, why don't you smile a bit more?",
                        textAlign: TextAlign.center,
                        style: 
                              TextStyle(fontSize: 20, color: Colors.white),
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
                        child: const Text('Chat now!',
                            style: TextStyle(fontSize: 15)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 15),
                      child: SvgPicture.asset('images/i8.svg',
                          height: 220, width: 220),
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
                    Color.fromRGBO(207, 112, 169, 1),
                    Color.fromRGBO(25, 84, 123, 1),
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
                        style: 
                                TextStyle(fontSize: 30, color: Colors.white)),
                      ),
                    
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "Let's see what cookie is upto..",
                        textAlign: TextAlign.center,
                        style: 
                              TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    
                    Container(
                      padding: EdgeInsets.only(bottom: 5, top: 3),
                      child: Text(
                        "While we wake him up,why don't you take a deep breath?",
                        textAlign: TextAlign.center,
                        style: 
                              TextStyle(fontSize: 20, color: Colors.white),
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
                        child: const Text('Launch AR',
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
            Container(
              padding: EdgeInsets.only(top:2250,bottom:25,left:40),
              child:Text('"Best friends come in all shapes and sizes"',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,),
            )
          ],
        ),
      ),
      
    );
  }
}
