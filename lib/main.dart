import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
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
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Em uma escala de 0 a 10 o quanto você indicaria a\n"
                      "experiência de hoje para amigos e familiares?",
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildElevatedButton(
                      0,
                      Color(0xff5b1f16),
                    ),
                    buildElevatedButton(
                      1,
                      Color(0xFF942a18),
                    ),
                    buildElevatedButton(
                      2,
                      Color(0xFFe73c22),
                    ),
                    buildElevatedButton(
                      3,
                      Color(0xFFec681c),
                    ),
                    buildElevatedButton(
                      4,
                      Color(0xFFf39019),
                    ),
                    buildElevatedButton(
                      5,
                      Color(0xFFfbba18),
                    ),
                    buildElevatedButton(
                      6,
                      Color(0xFFfcda23),
                    ),
                    buildElevatedButton(
                      7,
                      Color(0xFFcccc5f),
                    ),
                    buildElevatedButton(
                      8,
                      Color(0xFFcccc5f),
                    ),
                    buildElevatedButton(
                      9,
                      Color(0xFF69b436),
                    ),
                    buildElevatedButton(
                      10,
                      Color(0xFF316e2e),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          minimumSize: Size(150, 60)),
                      onPressed: () {},
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
              )
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
                    width: 210.0,
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

Widget buildElevatedButton(int number, Color buttonColor) {
  Color color = Colors.grey;

  return Padding(
    padding: EdgeInsets.all(5.0),
    child: Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "$number",
            textAlign: TextAlign.center,
          ),
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.grey,
            elevation: 10,
            primary: buttonColor,
            minimumSize: Size(70, 70),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            textStyle: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}
