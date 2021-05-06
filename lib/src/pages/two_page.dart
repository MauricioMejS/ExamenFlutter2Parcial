import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TwoPage extends StatefulWidget {
  @override
  createState() {
    return _TwoPage();
  }
}

class _TwoPage extends State<TwoPage> {
  String _name = '';

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
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Escribe tu nombre completo'),
              onChanged: (value) {
                _name = value;
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
                final List<String> nombre = [];
                String resultado = '';
                _name = _name.toLowerCase();
                for (int i = 0; i < _name.length; i++) {
                  var char = _name[i];
                  nombre.add(char);
                }
                nombre.sort();
                for (int i = 0; i < nombre.length; i++) {
                  resultado += nombre[i];
                }
                resultado.trim();

                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("Resultado"),
                          content: Text('$resultado'),
                        ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
