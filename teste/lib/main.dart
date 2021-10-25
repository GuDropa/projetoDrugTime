// ignore_for_file: use_key_in_widget_constructors

// ignore_for_file: use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
import 'loginScreen.dart';
import 'medRegister.dart';
import 'registerScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TiMed Login Page',
      debugShowCheckedModeBanner: false,
      //home: LoginScreen(),
      home: RegisterScreen(),
    );
  }
}
