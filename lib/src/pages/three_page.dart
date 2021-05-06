import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThreePage extends StatefulWidget {
  @override
  createState() {
    return _ThreePage();
  }
}

class _ThreePage extends State<ThreePage> {
  int _x = 0;
  int _y = 0;
  int _inter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Nombre'),
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Destruye y ordena tu nombre",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Primer Numero'),
                    onChanged: (value) {
                      _x = int.parse(value);
                    },
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Segundo Numero'),
                    onChanged: (value) {
                      _y = int.parse(value);
                    },
                  ),
                  TextButton(
                    child: Text('Resolver'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.blue,
                      onSurface: Colors.grey,
                    ),
                    onPressed: () {
                      Random random = new Random();
                      int randomNumber = random.nextInt(_y) + _x;
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("Resultado"),
                                content: Text('$randomNumber'),
                              ));
                    },
                  )
                ])));
  }
}
