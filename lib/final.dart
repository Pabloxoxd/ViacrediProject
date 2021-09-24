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
          bgBuilder(),
          Column(
            children: [
              logoBuilder(),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Deixe seu comentário!!",
                  style: TextStyle(
                    fontSize: 45,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              SizedBox(
                height: 300,
                width: 500,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 80, horizontal: 20),
                    hintText: "Escreva algo...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              )
            ],
          ),
          sideDrawBuilder(),
        ],
      ),
    );
  }
}
