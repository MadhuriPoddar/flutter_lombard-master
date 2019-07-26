import 'package:flutter/material.dart';

class Anil19 extends StatefulWidget {
  @override
  _Anil19State createState() => _Anil19State();
}

class _Anil19State extends State<Anil19> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
              	
                Center(
                  child: Container(
                    color: Colors.orange,
                    child: Icon(
                      Icons.add,
                      size: 100,
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                Icon(
                  Icons.add,
                  size: 100,
                ),
              ],
            )),
      ),
    );
  }
}
