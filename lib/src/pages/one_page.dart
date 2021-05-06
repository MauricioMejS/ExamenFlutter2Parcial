import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnePage extends StatefulWidget {
  @override
  createState() {
    return _OnePage();
  }
}

class _OnePage extends State<OnePage> {
  int _a = 0;
  int _b = 0;
  int _c = 0;
  double _x1 = 0;
  double _x2 = 0;
  double _total = 0;
  int _tot = 0;
  String _result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formula Cuadratica'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Para que se utiliza la formula cuadratica?",
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
                "La forma ax2 + bx + c = 0 se llama la forma estándar de una ecuación cuadrática. Antes de resolver una ecuación cuadrática usando la fórmula cuadrática, es vital estar seguros de que la ecuación tenga esta forma. Si no, podríamos usar los valores incorrectos de a, b, o c y la fórmula dará soluciones incorrectas."),
            Image(
                image: NetworkImage(
                    'https://www.aulafacil.com/uploads/cursos/750/editor/4002.jpg')),
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration:
                  InputDecoration(border: OutlineInputBorder(), labelText: 'A'),
              onChanged: (value) {
                _a = int.parse(value);
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration:
                  InputDecoration(border: OutlineInputBorder(), labelText: 'B'),
              onChanged: (value) {
                _b = int.parse(value);
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration:
                  InputDecoration(border: OutlineInputBorder(), labelText: 'C'),
              onChanged: (value) {
                _c = int.parse(value);
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
                _tot = ((_b * _b) - 4 * (_a * _c));
                print(_tot);
                if (_tot < 0) {
                  _result = 'La ecuacion no tiene solucion';
                } else if (_tot == 0) {
                  _x1 = -_b / (2 * _a);
                  _result = 'La solucion unica es x= $_x1';
                } else {
                  _total = sqrt(_tot);
                  print(_total);

                  _x1 = (-_b + _total) / (2 * _a);
                  _x2 = (-_b - _total) / (2 * _a);

                  print(_x1);
                  print(_x2);

                  _result = 'La dos soluciones son x1: $_x1 y x2: $_x2';
                }
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("Tus Datos"),
                          content: Text('$_result'),
                        ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
