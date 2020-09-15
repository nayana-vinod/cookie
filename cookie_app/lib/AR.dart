import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Ar_page extends StatefulWidget {
  @override
  _Ar_pageState createState() => _Ar_pageState();
}

class _Ar_pageState extends State<Ar_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Container(
        padding: EdgeInsets.only(top:80),
        child:Column(
        children: [
              
              SvgPicture.asset('images/i11.svg',
              width:400,
              height:400,
              ),
                 Container(
                   padding: EdgeInsets.all(20),
                   child: Text('"When everything seems dark, look again, you might be the light.."',
                style:TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
                 ),
        
        ],
      ),
      
      ), 
    );
  }
}