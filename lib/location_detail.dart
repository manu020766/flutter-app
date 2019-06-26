import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hola mundillo')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _section('Primero', Colors.red),
            _section('Segundo', Colors.green),
            _section('Tercero', Colors.blue),
          ],
        ));
  }
}

Widget _section(String title, Color color) {
  return Container(
    decoration: BoxDecoration(color: color),
    child: Text(title),
  );
}
