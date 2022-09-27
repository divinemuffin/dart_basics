import 'package:flutter/material.dart';

class MainRightDrawer extends Drawer {
  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            backgroundImage: AssetImage("assets/avatar.jpeg"),
            maxRadius: 50,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: Text(
              "My name",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }

  MainRightDrawer(this._scaffoldKey);
}
