import 'package:flutter/material.dart';

class MyMainBottomSheet {
  static PersistentBottomSheetController _controller;
  GlobalKey<ScaffoldState> _scaffoldKey;

  void _closeBottomSheet() {
    if (_controller != null) {
      _controller.close();
      _controller = null;
    }
  }

  void toggleBottomSheet() {
    if (_controller == null) {
      print("opening sheet");
      _controller = _scaffoldKey.currentState.showBottomSheet(
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

  MyMainBottomSheet(this._scaffoldKey);
}
