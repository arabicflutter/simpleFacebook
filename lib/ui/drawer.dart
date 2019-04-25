import 'package:flutter/material.dart';

class DrawerPage extends Drawer {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
          ),
          //AssetImage("assets/avatar1.jpg")
          // Image.asset("assets/avatar1.jpg"),
          
          // ListView(
          //   children: <Widget>[
          //     IconButton(icon: Icon(Icons.portable_wifi_off),)
          //   ],
          // )
        ],
      ),
    ));
  }
}
