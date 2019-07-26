
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack bar'),
      ),

      /// We use [Builder] here to use a [context] that is a descendant of [Scaffold]
      /// or else [Scaffold.of] will return null
      body: Builder(
        builder: (context) => Center(
          child: RaisedButton(
            child: const Text('Show toast'),
            onPressed: () => _showToast(context),
          ),
        ),
      ),
    );
  }

  void _showToast(BuildContext context) {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
