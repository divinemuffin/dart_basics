import 'package:flutter/material.dart';

class MainNavBar extends BottomAppBar {
  Widget build(BuildContext context) {
    return BottomAppBar(
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
    );
  }

  MainNavBar();
}
