// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:teste/profileScreen.dart';
import 'medRegister.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({email, password}) : super();
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff7e84b3),
          title: Text('TiMed'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProfileScreen(),
                  ),
                )
              },
            ),
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MedRegister(),
                  ),
                )
              },
            )
          ],
        ),
        body: Column(children: <Widget>[
          Row(children: <Widget>[
            Column(children: [
              Container(
                  height: 390,
                  width: 390,
                  child: Container(
                    child: Card(
                      child: Image.asset("web/relogio.gif"),
                      elevation: 0,
                      shadowColor: Color(0xff7e84b3),
                      margin: EdgeInsets.all(20),
                    ),
                  ))
            ]),
          ]),
          Row(children: [
            Container(
              height: 400,
              width: 400,
              child: ListView.separated(
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return ListTile(
                        leading: Icon(
                          Icons.medication_outlined,
                          size: 60.0,
                          color: Color(0xff7e84b3),
                        ),
                        title: Text('Pill ${index + 1}'),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.edit,
                            color: Color(0xff7e84b3),
                          ),
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => MedRegister(),
                              ),
                            )
                          },
                        ));
                  },
                  separatorBuilder: (_, __) => Divider(),
                  padding: EdgeInsets.all(12)),
            )
          ])
        ]));
  }
}
