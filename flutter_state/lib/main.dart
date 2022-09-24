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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> nav = ['Список 1', 'Список 2'];
  final List fakeData = List.generate(100, (index) => index.toString());

  Map<String, dynamic> data = {
    'Мои фото': [
      'asset_1.jpeg',
      'asset_2.jpeg',
      'asset_3.jpeg',
      'asset_4.jpeg',
      'asset_5.jpeg',
    ],
    'Галерея': [
      'asset_6.jpeg',
      'asset_7.jpeg',
      'asset_8.jpeg',
      'asset_9.jpeg',
      'asset_10.jpeg',
    ]
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: nav.length,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: TabBar(
            tabs: data.keys.map((String sectionName) => Tab(text: sectionName)).toList(),
          ),
        ),
        body: TabBarView(
          children: data.keys.map((sectionName) {
            return ListView(
              key: PageStorageKey(sectionName),
              children: <Widget>[
                ...data[sectionName].map((String e) {
                  return Image(image: AssetImage("assets/${e}"));
                }).toList()
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
