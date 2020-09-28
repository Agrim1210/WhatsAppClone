import 'package:WhatsApp_Clone/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366),
      ),
      home: HomePage(),
    );
  }
}

