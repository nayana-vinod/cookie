import 'package:cookieapp/AR.dart';
import 'package:cookieapp/chat.dart';
import 'package:cookieapp/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';




class Nav_page extends StatefulWidget {
  @override
  _Nav_pageState createState() => _Nav_pageState();
}

class _Nav_pageState extends State<Nav_page> {
   int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget screens = HomeScreen();

    switch(_currentIndex){
      case 0:
      screens=Ar_page();
      break;
      case 1:
      screens=Chat_page();
      break;
      case 2:
      screens=HomeScreen();
      break;
    }
   
    return Scaffold(
      
      body:screens,
       bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.spa),
              title: Text('Meet'),
              backgroundColor: Color.fromRGBO(255,192,203,1),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text('Chat'),
              backgroundColor: Color.fromRGBO(152,251,152,1),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Color.fromRGBO(255,192,180,1),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Meet Cookie'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
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