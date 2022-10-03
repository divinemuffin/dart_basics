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
  var listData = List.generate(10, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal list ${MediaQuery.of(context).size.width} ${MediaQuery.of(context).orientation}'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            height: constraints.maxWidth < 500 ? 100 : MediaQuery.of(context).size.height,
            child: ListView(
              scrollDirection: constraints.maxWidth < 500 ? Axis.horizontal : Axis.vertical,
              children: listData
                  .map(
                    (e) => Container(
                      width: 100,
                      height: 100,
                      color:
                          Color.fromRGBO(0, (255 - e * (255 ~/ listData.length)), 0, ((255 - 50) - e * ((255 - 50) ~/ listData.length)).toDouble()),
                      margin: EdgeInsets.all(5),
                    ),
                  )
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}
