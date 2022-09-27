import 'package:flutter/material.dart';

class MainLeftDrawer extends Drawer {
  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            DrawerHeader(
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage("assets/avatar.jpeg"),
                maxRadius: 50,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text("Images"),
              trailing: Icon(Icons.chevron_right),
            ),
          ]),
          Container(
            padding: EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _scaffoldKey.currentState.closeDrawer(),
                  child: Text("Exit"),
                ),
                ElevatedButton(
                  onPressed: () => _scaffoldKey.currentState.closeDrawer(),
                  child: Text("Register"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  MainLeftDrawer(this._scaffoldKey);
}
