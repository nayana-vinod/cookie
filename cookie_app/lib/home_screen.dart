import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(68.0), // here the desired height
          child: AppBar(
            backgroundColor: Colors.blue,
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.person),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
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
            title: Text('Your space'),
          ),
        ),
        body: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.chat_bubble),
                backgroundColor: Colors.blue,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.chat_bubble),
                backgroundColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
