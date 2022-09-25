import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
  PersistentBottomSheetController _controller;

  void _closeBottomSheet() {
    if (_controller != null) {
      _controller.close();
      _controller = null;
    }
  }

  void toggleBottomSheet() {
    if (_controller == null) {
      print("opening sheet");
      _controller = scaffoldKey.currentState.showBottomSheet(
        (context) => Container(
          height: 200,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListTile(
                  leading: Icon(Icons.credit_card),
                  title: Text("Сумма:"),
                  trailing: Text("200 usd"),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size(300, 50),
                  ),
                  child: Text("Оплатить"),
                  onPressed: _closeBottomSheet,
                ),
              ]),
        ),
      );
    } else {
      _closeBottomSheet();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(onPressed: () => scaffoldKey.currentState.openEndDrawer(), icon: Icon(Icons.person)),
        ],
      ),
      drawer: Drawer(
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
                    onPressed: () => scaffoldKey.currentState.closeEndDrawer(),
                    child: Text("Exit"),
                    // style: ElevatedButton.styleFrom(
                    //   minimumSize: Size.fromHeight(40), // fromHeight use double.infinity as width and 40 is the height
                    // ),
                  ),
                  ElevatedButton(
                    onPressed: () => scaffoldKey.currentState.closeEndDrawer(),
                    child: Text("Register"),
                    // style: ElevatedButton.styleFrom(
                    //   minimumSize: Size.fromHeight(40), // fromHeight use double.infinity as width and 40 is the height
                    // ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
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
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        elevation: 1,
        notchMargin: 3,
        clipBehavior: Clip.antiAlias,
        child: Container(
          child: BottomNavigationBar(
            elevation: 0,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Chat"),
              BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "Albums"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: toggleBottomSheet),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Container(
        color: Colors.black26,
      ),
    );
  }
}
