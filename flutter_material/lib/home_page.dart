import 'package:flutter/material.dart';
import 'package:simple_app/components/main_bottom_sheet.dart';
import 'package:simple_app/components/main_left_drawer.dart';
import 'package:simple_app/components/main_navigation_bar.dart';
import 'package:simple_app/components/main_right_drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final _bottomSheet = MainBottomSheet(scaffoldKey);

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
        actions: [IconButton(onPressed: () => scaffoldKey.currentState.openEndDrawer(), icon: Icon(Icons.person))],
      ),
      drawer: MainLeftDrawer(scaffoldKey),
      endDrawer: MainRightDrawer(scaffoldKey),
      bottomNavigationBar: MainNavBar(),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: _bottomSheet.toggleBottomSheet),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Container(
        color: Colors.black26,
      ),
    );
  }
}
