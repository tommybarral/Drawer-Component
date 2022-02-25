import 'package:flutter/material.dart';
import '../screens/first_section.dart';
import '../screens/second_section.dart';

class MainDrawer extends StatelessWidget {

  Widget buildListTile(IconData icon, String title, Function tapHandler) {
    return ListTile(
      leading: Icon(icon, size: 26),
      title: Text(title, style: TextStyle(fontSize: 18),),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(elevation: 5,
      child: Column(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'App drawer component',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic
              ),
            ),
          ),
          SizedBox(height: 20,),
          buildListTile(Icons.home, 'Home page', () {
            Navigator.of(context).pushNamed('/');
          }),
          buildListTile(Icons.ac_unit, 'first section here', () {
            Navigator.of(context).pushNamed(FirstSection.routeName);
          }),
          buildListTile(Icons.settings, 'second section here', () {
            Navigator.of(context).pushNamed(SecondSection.routeName);
          }),
        ],
      ),
    );
  }
}
