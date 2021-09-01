import 'package:flutter/material.dart';
import 'package:navigation/Pages/page_snack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageSnack(),
      debugShowCheckedModeBanner: false,
    );
  }
}
