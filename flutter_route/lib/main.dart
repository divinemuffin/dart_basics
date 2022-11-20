import 'package:albums_route/pages/not_found_page.dart';
import 'package:albums_route/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  AppRouter.setupRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.router.generator,
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => NotFoundPage());
      },
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Routes'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Routes',
              ),
            ],
          ),
        ),
        drawer: NavigationDrawer());
  }
}

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.chevron_right),
                selected: ModalRoute.of(context)?.settings.name == "/home",
                onTap: () {
                  print("Navigating home");
                  print(ModalRoute.of(context)?.settings.name);
                  Navigator.of(context).pushNamed("/home");
                }),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("Artists"),
              trailing: Icon(Icons.chevron_right),
              selected: ModalRoute.of(context)?.settings.name == "/artists",
              onTap: () => Navigator.of(context).pushNamed("/artists"),
            ),
          ],
        ),
      ),
    );
  }
}
