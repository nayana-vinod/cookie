import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class Chat_page extends StatefulWidget {
  @override
  _Chat_pageState createState() => _Chat_pageState();
}

class _Chat_pageState extends State<Chat_page> {
  @override
  Widget build(BuildContext context){
      return Scaffold(
      body:Container(
        padding: EdgeInsets.only(top:80),
        child:Column(
        children: [
              
              SvgPicture.asset('images/i11.svg',
              width:400,
              height:400,
              ),
              Text('"Hey little fighter, soon things will be brighter.."',
              style:TextStyle(fontSize: 18)),
        
        ],
      ),
      
      ), 
    );
  }
}