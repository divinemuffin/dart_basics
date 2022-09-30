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

// https://medium.com/flutter-community/a-visual-guide-to-input-decorations-for-flutter-textfield-706cf1877e25

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Text field styled")),
        body: Theme(
            data: Theme.of(context).copyWith(
              primaryColor: Colors.purple,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: TextField(
                // autofocus: true,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.purple,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.purple,
                      width: 2.0,
                    ),
                  ),
                  helperText: "Hint: use fingers to type",
                  labelText: "Search",
                  labelStyle: TextStyle(color: Colors.purple),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.purple,
                  ),
                  suffixIconColor: Colors.purple,
                  isCollapsed: false,
                  hintText: 'Type here ....',
                ),
              ),
            )));
  }
}
