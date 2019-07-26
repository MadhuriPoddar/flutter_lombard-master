import 'package:flutter/material.dart';
import 'package:flutter_lombard/july_19/anil111.dart';

class Vivek extends StatefulWidget {
  @override
  _VivekState createState() => _VivekState();
}

class _VivekState extends State<Vivek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Hero(
                  tag: "bg",
                  child: Container(
                    color: Colors.red,
                    child: Icon(Icons.category),
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: InkWell(
                  splashColor: Colors.red,
                  highlightColor: Colors.yellowAccent,
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Anil()));
                  },
                  child: Hero(
                    tag: "anil",
                    child: Container(
                      color: Colors.green,
                      child: Icon(
                        Icons.print,
                        size: 49,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.yellow,
                child: Icon(Icons.add),
              )
            ],
          ),
        ),
      ),
    );
  }
}
