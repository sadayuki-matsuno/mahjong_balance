import 'package:flutter/material.dart';

import 'top.dart';
import 'menu.dart';

class MahjongBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MB',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          leading: new Image.asset(
            'images/mb_white_transparent.png',
            fit: BoxFit.scaleDown,
          ),
          title: new Text('Mahjong Balance'),
        ),
        endDrawer: new MenuDrawer(),
        body: new TopBody(),
      ),
    );
  }
}
