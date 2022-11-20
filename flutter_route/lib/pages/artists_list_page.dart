import 'dart:convert';
import 'package:albums_route/fetch_file.dart';
import 'package:albums_route/main.dart';
import 'package:flutter/material.dart';

class ArtistsListPage extends StatefulWidget {
  ArtistsListPage({Key? key}) : super(key: key);

  @override
  _ArtistsListPageState createState() => _ArtistsListPageState();
}

class _ArtistsListPageState extends State {
  Future<String> _artistsFuture = fetchFile("./assets/artists.json");

  List<Widget> parseAndBuildList(String jsonData) {
    final List parsedList = jsonDecode(jsonData);
    return parsedList.map((_artist) {
      return ListTile(
          title: Text(_artist["name"]),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            print("/artists/${_artist['link']}");
            Navigator.of(context).pushNamed("/artists/${_artist['link']}", arguments: _artist);
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Authors List'),
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: FutureBuilder(
          future: _artistsFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done && snapshot.data != null) {
              final _list = parseAndBuildList(snapshot.data as String);
              return ListView.separated(
                itemCount: _list.length,
                separatorBuilder: (BuildContext context, int index) => const Divider(),
                itemBuilder: (context, index) => _list[index],
              );
            }
            return Center(
              child: Text("Loading :::"),
            );
          },
        ),
      ),
    );
  }
}
