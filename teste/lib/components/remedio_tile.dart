import 'package:flutter/material.dart';
import '../models/remedio.dart';

class RemedioTile extends StatelessWidget {
  final Remedio remedio;

  const RemedioTile(this.remedio);

  @override
  Widget build(BuildContext context) {
    

    return ListTile(
      title: Text(remedio.name),
      // subtitle: Text("Current Time: ${remedio.hour.format(context)}"),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {},
              color: Colors.blue,
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {},
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
