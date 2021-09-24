import 'package:flutter/material.dart';
import 'package:viacredi/imagesConstruct.dart';

class FinalComment extends StatefulWidget {
  FinalComment({Key? key}) : super(key: key);

  @override
  _FinalCommentState createState() => _FinalCommentState();
}

class _FinalCommentState extends State<FinalComment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/bg.png",
            fit: BoxFit.fill,
            width: 2000.0,
          ),
          logoBuilder(),
          sideDrawBuilder()
        ],
      ),
    );
  }
}
