import 'package:flutter/material.dart';
    int numeroPessoas = 0;
    String podeEntrar = "Pode Entrar!";
void main() {

  runApp(MaterialApp(
      title: 'ContaPessoas',
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _numeroPessoas = 0;
  String _podeEntrar = "Pode Entrar!";
  void _mudaPessoa(int delta){
    setState(() {
      _numeroPessoas += delta; 
    });
  }

  @override
  Widget build(BuildContext context) {

    return Stack(children: <Widget>[
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: $_numeroPessoas",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                FlatButton(
                  child: Text(
                    "+1",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  onPressed: () {
                     _mudaPessoa(1);
                  },
                ),
                FlatButton(
                  child: Text(
                    "-1",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  onPressed: () {
                    _mudaPessoa(-1);
                  },
                ),
              ],
            ),
            Text(
              "$_podeEntrar",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        )
      ]);
  }
}