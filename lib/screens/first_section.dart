import '../Widgets/drawer.dart';
import 'package:flutter/material.dart';

class FirstSection extends StatelessWidget {

  static const routeName = '/first-section';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First section'), centerTitle: true,),
      drawer: MainDrawer(),
      body: Center(
        child: Text('First section'),
      ),
    );
  }
}
