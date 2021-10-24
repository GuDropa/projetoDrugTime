// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

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
              onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        title: Text("Ola Casinhas!"),
                        content:
                            Text("Botão para configurar horario de remédios"),
                        actions: <Widget>[
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text('Fechar eu!'))
                        ]);
                  }),
            )
          ],
        ),
        body: Column(children: <Widget>[
          Row(children: [
            Container(
                height: 200,
                width: 390,
                child: Container(
                  child: Card(
                    child: Image.asset("web/ricardo-milos-dance.gif"),
                    elevation: 0,
                    shadowColor: Color(0xff7e84b3),
                    margin: EdgeInsets.all(20),
                  ),
                ))
          ]),
          Row(children: [
            Container(
              height: 400,
              width: 390,
              child: ListView.builder(
                itemCount: 9,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Remédio ${index + 1}'),
                  );
                },
              ),
            )
          ])
        ]));
  }
}
