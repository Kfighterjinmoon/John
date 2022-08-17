import 'package:flutter/material.dart';
import 'package:flutter_application_7/pages/add/homepage2.dart';
import 'package:flutter_application_7/pages/homepage1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: homepage2(),
    );
  }
}
