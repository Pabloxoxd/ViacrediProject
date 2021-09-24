import 'package:flutter/material.dart';

Widget bgBuilder() {
  return Image.asset(
    "images/bg.png",
    fit: BoxFit.fill,
    width: 2000.0,
  );
}

Widget logoBuilder() {
  return Padding(
    padding: EdgeInsets.only(top: 30.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          "images/logo.png",
          width: 400.0,
        ),
      ],
    ),
  );
}

Widget sideDrawBuilder() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Image.asset(
            "images/desenho.png",
            width: 200.0,
          ),
        ],
      ),
    ],
  );
}
