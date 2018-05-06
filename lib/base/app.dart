import 'package:flutter/material.dart';

import 'top.dart';
import 'menu.dart';

class MahjongBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Mahjong Balance',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Mahjong Balance'),
        ),
        endDrawer: new MenuDrawer(),
        body: new ListView(
          children: [
            new Image.asset(
              'images/lake.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            new TitleSection(),
            new ButtonSection(),
            new TextSection(),
          ],
        ),
      ),
    );
  }
}
