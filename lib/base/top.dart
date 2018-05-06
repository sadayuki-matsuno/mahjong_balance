import 'package:flutter/material.dart';

import 'menu.dart';

class TopBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: [
        topMenu(),
      ],
    );
  }
}

class topMenu extends StatelessWidget {
  final Menu menu = menus[0];
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(16.0),
      child: new Card(
        color: new Color(menu.primaryColor),
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new ListTile(
              leading: new Icon(
                menu.icon,
                size: 40.0,
                color: Colors.white,
              ),
              title: new Text(
                menu.title,
                style: new TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
