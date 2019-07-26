import 'package:flutter/material.dart';

class Anil extends StatefulWidget {
  @override
  _AnilState createState() => _AnilState();
}

class _AnilState extends State<Anil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Hero(
              tag: "anil",
              child: Container(
                color: Colors.white,
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.print,
                  size: 49,
                ),
              ),
            ),
            Hero(
              tag: "bg",
              child: Container(
                color: Colors.orange.shade300,
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.print,
                  size: 49,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
