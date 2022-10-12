import 'package:albums_route/pages/artists_list.dart';
import 'package:flutter/material.dart';

class ArtistPage extends StatelessWidget {
  final String artist_id;
  final dynamic data;

  ArtistPage({Key? key, required this.artist_id, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data["name"].toUpperCase()),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Text('Author page ${data["about"]}'),
            ),
          ],
        ),
      ),
    );
  }
}
