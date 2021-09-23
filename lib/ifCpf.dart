import 'package:flutter/material.dart';

class ifCpf extends StatefulWidget {
  ifCpf({Key? key}) : super(key: key);

  @override
  _ifCpfState createState() => _ifCpfState();
}

class _ifCpfState extends State<ifCpf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "images/bg.png",
            fit: BoxFit.fill,
            width: 2000.0,
          ),
        ],
      ),
    );
  }
}
