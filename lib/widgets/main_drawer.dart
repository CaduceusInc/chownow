import 'package:flutter/material.dart';

import '../screens/settings_screen.dart';

class MainDrawer extends StatelessWidget {
  
  Widget buildListTile(String title, IconData icon, Function drawerActions) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: drawerActions,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          //color: Theme.of(context).accentColor,
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(20),
            backgroundBlendMode: BlendMode.lighten,
          ),
          child: Text(
            "Meals App",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        buildListTile(
          'Meals',
          Icons.restaurant,
           () {
            
            Navigator.of(context).pushReplacementNamed("/");
          },
        ),
        SizedBox(
          height: 20,
        ),
        buildListTile(
          'Settings',
          Icons.settings_applications,
          () {
            Navigator.of(context).pushNamed(
              SettingsScreen.routeName,
            );
          },
        ),
      ]),
    );
  }
}
