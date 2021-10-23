import 'package:flutter/material.dart';
import 'loginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TiMed Login Page',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
