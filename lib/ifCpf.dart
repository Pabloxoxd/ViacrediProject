import 'dart:ui';
import 'cpfCheck.dart';
import 'package:flutter/material.dart';
import 'package:viacredi/imagesConstruct.dart';

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
          bgBuilder(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              logoBuilder(),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Gostaria de informar seu CPF?",
                      style:
                          TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                30.0,
                              ),
                            ),
                            minimumSize: Size(200, 70),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctxt) => CpfCheck()));
                          },
                          child: Text(
                            "Sim",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 45,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              30.0,
                            ),
                          ),
                          minimumSize: Size(200, 70),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctxt) => CpfCheck()));
                        },
                        child: Text(
                          "Não",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 45,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          sideDrawBuilder(),
        ],
      ),
    );
  }
}
