import 'package:flutter/material.dart';
import './Widgets/drawer.dart';
import '../screens/first_section.dart';
import '../screens/second_section.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.yellow,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        FirstSection.routeName: (context) => FirstSection(),
        SecondSection.routeName: (context) => SecondSection(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drawer app'), centerTitle: true,),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Center(
          child: Text('Main page'),
      ),
    );
  }
}
