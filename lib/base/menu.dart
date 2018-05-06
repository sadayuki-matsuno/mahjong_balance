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
  final String primaryColor;
  final String secondaryColor;
}

const List<Menu> menus = const <Menu>[
  const Menu(
    title: 'フリー収支',
    icon: Icons.person,
    routeName: '/freeBalance',
    primaryColor: '#00c8f8',
    secondaryColor: '#008db1',
  ),
  const Menu(
    title: 'セット収支',
    icon: Icons.people,
    routeName: '/setBalance',
    primaryColor: '#e93578',
    secondaryColor: '#9c1f4d',
  ),
  const Menu(
    title: '大会',
    icon: Icons.group_add,
    routeName: '/tournament',
    primaryColor: '#ffb253',
    secondaryColor: '#d68227',
  ),
  const Menu(
    title: 'これまでの戦績',
    icon: Icons.timeline,
    routeName: '/history',
    primaryColor: '#92d36e',
    secondaryColor: '#629c44',
  ),
];
