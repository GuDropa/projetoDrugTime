// ignore_for_file: use_key_in_widget_constructors, unused_import
import 'package:teste/homeScreen.dart';
import 'package:teste/routes/app_routes.dart';
import 'package:teste/views/medForm.dart';
import 'package:flutter/material.dart';
import 'loginScreen.dart';
import 'medRegister.dart';
import 'registerScreen.dart';
import 'profileScreen.dart';
import 'package:teste/views/medList.dart';
import 'views/medRegister.dart';
import 'package:teste/medRegister.dart';
import 'package:teste/loginScreen.dart';

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
      routes: {
        // AppRoutes.HOME: (_) => RemedioList(),
        // AppRoutes.REMEDIO_FORM: (_) => RemedioForm(),
      },
    );
  }
}
