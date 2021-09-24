import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:viacredi/second.dart';
import 'package:viacredi/ifCpf.dart';
import 'package:viacredi/imagesConstruct.dart';

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
  int? _selectedButton;

  void setSelectedButton(int index, bool feedback) {
    setState(() {
      _selectedButton = index;
      feedback = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          bgBuilder(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              logoBuilder(),
              Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Em uma escala de 0 a 10 o quanto você indicaria a\n"
                      "     experiência de hoje para amigos e familiares?",
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
                    CustomElevatedButton(
                        0,
                        _selectedButton == null
                            ? Color(0xff5b1f16)
                            : _selectedButton == 0
                                ? Colors.grey
                                : Color(0xff5b1f16), () {
                      setSelectedButton(0, true);
                    }),
                    CustomElevatedButton(
                        1,
                        _selectedButton == null
                            ? Color(0xFF942a18)
                            : _selectedButton == 1
                                ? Colors.grey
                                : Color(0xFF942a18), () {
                      setSelectedButton(1, true);
                    }),
                    CustomElevatedButton(
                        2,
                        _selectedButton == null
                            ? Color(0xFFe73c22)
                            : _selectedButton == 2
                                ? Colors.grey
                                : Color(0xFFe73c22), () {
                      setSelectedButton(2, true);
                    }),
                    CustomElevatedButton(
                        3,
                        _selectedButton == null
                            ? Color(0xFFec681c)
                            : _selectedButton == 3
                                ? Colors.grey
                                : Color(0xFFec681c), () {
                      setSelectedButton(3, true);
                    }),
                    CustomElevatedButton(
                        4,
                        _selectedButton == null
                            ? Color(0xFFf39019)
                            : _selectedButton == 4
                                ? Colors.grey
                                : Color(0xFFf39019), () {
                      setSelectedButton(4, true);
                    }),
                    CustomElevatedButton(
                        5,
                        _selectedButton == null
                            ? Color(0xFFfbba18)
                            : _selectedButton == 5
                                ? Colors.grey
                                : Color(0xFFfbba18), () {
                      setSelectedButton(5, true);
                    }),
                    CustomElevatedButton(
                        6,
                        _selectedButton == null
                            ? Color(0xFFfcda23)
                            : _selectedButton == 6
                                ? Colors.grey
                                : Color(0xFFfcda23), () {
                      setSelectedButton(6, true);
                    }),
                    CustomElevatedButton(
                        7,
                        _selectedButton == null
                            ? Color(0xFFcccc5f)
                            : _selectedButton == 7
                                ? Colors.grey
                                : Color(0xFFcccc5f), () {
                      setSelectedButton(7, true);
                    }),
                    CustomElevatedButton(
                        8,
                        _selectedButton == null
                            ? Color(0xFFb3c356)
                            : _selectedButton == 8
                                ? Colors.grey
                                : Color(0xFFb3c356), () {
                      setSelectedButton(8, true);
                    }),
                    CustomElevatedButton(
                        9,
                        _selectedButton == null
                            ? Color(0xFF69b436)
                            : _selectedButton == 9
                                ? Colors.grey
                                : Color(0xFF69b436), () {
                      setSelectedButton(9, true);
                    }),
                    CustomElevatedButton(
                        10,
                        _selectedButton == null
                            ? Color(0xFF316e2e)
                            : _selectedButton == 10
                                ? Colors.grey
                                : Color(0xFF316e2e), () {
                      setSelectedButton(10, true);
                    }),
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
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctxt) => StarRate()));
                      },
                      child: Text(
                        "Enviar",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    )
                  ],
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

class CustomElevatedButton extends StatelessWidget {
  final int number;
  final Color buttonColor;
  final void Function() onPressed;

  CustomElevatedButton(this.number, this.buttonColor, this.onPressed);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: onPressed,
            child: Text(
              '$number',
              textAlign: TextAlign.center,
            ),
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.grey,
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
}
