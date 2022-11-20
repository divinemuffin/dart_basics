import 'package:albums_route/pages/artist_page.dart';
import 'package:albums_route/pages/artists_list_page.dart';
import 'package:albums_route/pages/home_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static FluroRouter router = FluroRouter();

  static Handler HomeHandler = Handler(
    handlerFunc: (context, parameters) {
      print("handling /home: ${parameters}");
      return HomePage();
    },
  );
  static Handler ArtistsListHandler = Handler(
    handlerFunc: (context, parameters) {
      print("handling /artists: ${parameters}");
      if (parameters["id"] != null) {
        final args = ModalRoute.of(context!)?.settings.arguments;
        return ArtistPage(artist_id: parameters["id"]![0], data: args);
      }
      return ArtistsListPage();
    },
  );

  static void setupRouter() {
    router.define("/home", handler: HomeHandler, transitionType: TransitionType.inFromBottom);
    router.define("/artists", handler: ArtistsListHandler, transitionType: TransitionType.cupertino);
    router.define("/artists/:id", handler: ArtistsListHandler, transitionType: TransitionType.inFromBottom);
  }
}
