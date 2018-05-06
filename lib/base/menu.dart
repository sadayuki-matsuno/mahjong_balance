import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> allDrawerItems = menus.map((Menu menu) {
      return new ListTile(
        leading: new Icon(menu.icon),
        title: new Text(menu.title),
        onTap: () {
          Navigator.of(context).pushNamed(menu.routeName);
        },
      );
    }).toList();
    return new Drawer(
        child: new ListView(primary: true, children: allDrawerItems));
  }
}

class Menu {
  const Menu({
    this.title,
    this.icon,
    this.routeName,
    this.primaryColor,
    this.secondaryColor,
  });
  final String title;
  final IconData icon;
  final String routeName;
  final int primaryColor;
  final int secondaryColor;
}

const List<Menu> menus = const <Menu>[
  const Menu(
    title: 'フリー収支',
    icon: Icons.person,
    routeName: '/freeBalance',
    primaryColor: 0xFF00C8F8,
    secondaryColor: 0xFF008DB1,
  ),
  const Menu(
    title: 'セット収支',
    icon: Icons.people,
    routeName: '/setBalance',
    primaryColor: 0xFFE93578,
    secondaryColor: 0xFF9C1F4D,
  ),
  const Menu(
    title: '大会',
    icon: Icons.group_add,
    routeName: '/tournament',
    primaryColor: 0xFFFFB253,
    secondaryColor: 0XFFD68227,
  ),
  const Menu(
    title: 'これまでの戦績',
    icon: Icons.timeline,
    routeName: '/history',
    primaryColor: 0xFF92D36E,
    secondaryColor: 0xFF629C44,
  ),
];
