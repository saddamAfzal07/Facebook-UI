import 'package:facebook_ui/widgets.dart/mainmenutab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook UI',
      theme: ThemeData(
        // fontFamily: "Times New Roman",
        primaryColor: Colors.white,
      ),
      home: menutab(),
    );
  }
}
