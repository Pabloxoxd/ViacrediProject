import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:viacredi/ifCpf.dart';

class StarRate extends StatefulWidget {
  StarRate({Key? key}) : super(key: key);

  @override
  _StarRateState createState() => _StarRateState();
}

class _StarRateState extends State<StarRate> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "images/bg.png",
            fit: BoxFit.fill,
            width: 2000.0,
          ),
          Column(
            children: [
              buildRow("Ambiente do Posto de Atendimento"),
              ratingBarBuilder(),
              buildRow("Atendimento dos Colaboradores"),
              ratingBarBuilder(),
              buildRow("Tempo de Espera"),
              ratingBarBuilder(),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            30.0,
                          ),
                        ),
                        minimumSize: Size(150, 60),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctxt) => ifCpf()));
                      },
                      child: Text(
                        "Enviar",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
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
              )
            ],
          ),
        ],
      ),
    );
  }
}

Widget buildRow(String text) {
  return Padding(
    padding: EdgeInsets.only(top: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$text",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

Widget ratingBarBuilder() {
  return Padding(
    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RatingBar(
          initialRating: 0,
          itemPadding: EdgeInsets.only(left: 10, right: 10),
          itemSize: 70,
          direction: Axis.horizontal,
          allowHalfRating: false,
          itemCount: 5,
          ratingWidget: RatingWidget(
              full: Image.asset("images/estrela_active.png"),
              half: Image.asset("images/estrela_light.png"),
              empty: Image.asset("images/estrela_light.png")),
          onRatingUpdate: (rating) {},
        ),
      ],
    ),
  );
}
