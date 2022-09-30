import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
  var listData = List.generate(50, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Horizontal list'),
        ),
        body: ListView(
          scrollDirection: MediaQuery.of(context).size.width < 500 ? Axis.horizontal : Axis.vertical,
          children: listData
              .map((e) => Container(
                    width: 200,
                    height: 200,
                    color: Color.fromRGBO(0, (255 - e * (255 ~/ listData.length)), 0, 1),
                    margin: EdgeInsets.all(5),
                  ))
              .toList(),
        ));
  }
}
