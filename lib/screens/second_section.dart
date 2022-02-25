import 'package:flutter/material.dart';
import '../Widgets/drawer.dart';

class SecondSection extends StatelessWidget {

  static const routeName = '/second-section';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second section'), centerTitle: true,),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Second section'),
      ),
    );
  }
}
