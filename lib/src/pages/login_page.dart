import 'package:flutter/material.dart';

import 'package:examen2/src/pages/menu_page.dart';

class LoginPage extends StatefulWidget {
  @override
  createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  String _Name = '';
  String _Age = '';
  String _State = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Examen 2'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Nombre'),
              onChanged: (value) {
                _Name = value;
              },
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Edad'),
              onChanged: (value) {
                _Age = value;
              },
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Estado'),
              onChanged: (value) {
                _State = value;
              },
            ),
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("Tus Datos"),
                          content: Text(
                              'Bienvenido $_Name, tienes $_Age anios y eres de $_State'),
                          actions: [
                            TextButton(
                              child: Text("Aceptar"),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MenuPage()));
                              },
                            )
                          ],
                        ));
              },
              child: Text('Entar'),
            )
          ],
        ),
      ),
    );
  }
}
