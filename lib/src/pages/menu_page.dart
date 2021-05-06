import 'package:examen2/src/pages/three_page.dart';
import 'package:examen2/src/pages/two_page.dart';
import 'package:flutter/material.dart';
import 'package:examen2/src/pages/one_page.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              padding: EdgeInsets.only(bottom: 10),
              minWidth: 400,
              height: 40.0,
              color: Colors.blue,
              child: Text(
                "A",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OnePage()));
              },
            ),
            MaterialButton(
              minWidth: 400,
              height: 40.0,
              color: Colors.blue,
              child: Text(
                "B",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TwoPage()));
              },
            ),
            MaterialButton(
              minWidth: 400.0,
              height: 40.0,
              color: Colors.blue,
              child: Text(
                "C",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThreePage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
