import "package:flutter/material.dart";
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:viacredi/final.dart';
import 'package:viacredi/second.dart';
import 'package:viacredi/imagesConstruct.dart';

class CpfCheck extends StatefulWidget {
  CpfCheck({Key? key}) : super(key: key);

  @override
  _CpfCheckState createState() => _CpfCheckState();
}

class _CpfCheckState extends State<CpfCheck> {
  FToast? fToast;
  TextEditingController cpfController = TextEditingController();

  //Toast construct

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast!.init(context);
  }

  _showToast() {
    Widget toast = Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.redAccent,
      ),
      child: Row(
        children: [
          Icon(Icons.error),
          SizedBox(
            width: 20,
          ),
          Text(
            "Por Favor, digite um CPF válido!!",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
    // Custom Toast Position
    fToast!.showToast(
        child: toast,
        toastDuration: Duration(seconds: 8),
        positionedToastBuilder: (context, child) {
          return Positioned(
            child: child,
            top: 505,
          );
        });
  }

  //function validate cpf
  bool cpfValid(String cpf) {
    bool valid = CPFValidator.isValid("$cpf") ? true : false;
    if (valid == true) {
      return true;
    } else {
      return false;
    }
  }

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
                padding: EdgeInsets.only(top: 15),
                child: TextField(
                  controller: cpfController,
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 30),
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
                          minimumSize: Size(160, 60),
                        ),
                        onPressed: () {
                          if (cpfValid(cpfController.text) == true) {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalComment()));
                          } else {
                            _showToast();
                          }
                        },
                        child: Text(
                          "Enviar",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 36,
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
          sideDrawBuilder(),
        ],
      ),
    );
  }
}

Widget numericButton(int number) {
  return Padding(
    padding: EdgeInsets.all(7),
    child: TextButton(
      onPressed: () {},
      child: Text("$number"),
    ),
  );
}
