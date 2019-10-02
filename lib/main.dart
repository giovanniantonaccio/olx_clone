import 'package:flutter/material.dart';
import 'package:olx_clone/screens/home.dart';

void main() => runApp(MyApp());

const _title = 'OLX';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(title: _title),
    );
  }
}
