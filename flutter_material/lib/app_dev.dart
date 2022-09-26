import 'package:flutter/material.dart';
import 'package:simple_app/components/main_bottom_sheet.dart';
import 'package:simple_app/components/main_left_drawer.dart';
import 'package:simple_app/components/main_navigation_bar.dart';
import 'package:simple_app/components/main_right_drawer.dart';

class MyAppDev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Material app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final _bottomSheet = MyMainBottomSheet(scaffoldKey);

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
        actions: [IconButton(onPressed: () => scaffoldKey.currentState.openEndDrawer(), icon: Icon(Icons.person))],
      ),
      drawer: MyMainLeftDrawer(scaffoldKey),
      endDrawer: MyMainRightDrawer(scaffoldKey),
      bottomNavigationBar: MyMainNavBar(),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: _bottomSheet.toggleBottomSheet),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Container(
        color: Colors.black26,
      ),
    );
  }
}
