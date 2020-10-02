import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class KodeotpScreen extends StatefulWidget {
  @override
  _KodeotpScreenState createState() => _KodeotpScreenState();
}

class _KodeotpScreenState extends State<KodeotpScreen> {
  var onTapRecognizer;

  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  StreamController<ErrorAnimationType> errorController;

  bool hasError = false;
  String currentText = "";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    onTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pop(context);
      };
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: <Widget>[
                    ClipPath(
                      clipper: CustomShapeClipper(),
                      child: Container(
                        height: 270.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF088A1E),
                          image: DecorationImage(
                            image: AssetImage("assets/images/circle1.png"),
                            alignment: Alignment(-1.4, -1.5),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/circle2.png"),
                              alignment: Alignment(1.5, -1.8),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 40.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color:
                                    const Color(0xFF0E3311).withOpacity(0.0)),
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 20.0,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.arrow_back),
                                    color: Colors.white,
                                    iconSize: 30.0,
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "KODE OTP",
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 23.0),
                        child: Wrap(
                          children: [
                            RichText(
                              text: TextSpan(
                                  text:
                                      "Masukkan Kode OTP yang\ntelahkami kirimkan ke +62 ",
                                  children: [
                                    TextSpan(
                                        text: "85021545",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                  ],
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 15)),
                              textAlign: TextAlign.center,
                            ),
                            // Text(
                            //   "Masukkan Kode OTP yang telah kami kirimkan ke +62 85xxxxxxx",
                            //   style: TextStyle(fontSize: 20.0),
                            // ),
                          ],
                        ),
                      ),
                      Form(
                        key: formKey,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 30),
                            child: PinCodeTextField(
                              textInputType: TextInputType.number,
                              length: 6,
                              obsecureText: false,
                              // animationType: AnimationType.fade,
                              pinTheme: PinTheme(
                                inactiveColor: Colors.green,
                                selectedColor: Colors.green,
                                // shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(5),
                                fieldHeight: 50,
                                fieldWidth: 40,
                                activeFillColor: Colors.white,
                              ),
                              animationDuration: Duration(milliseconds: 300),
                              // backgroundColor: Colors.blue.shade50,
                              enableActiveFill: false,
                              errorAnimationController: errorController,
                              controller: textEditingController,
                              onCompleted: (v) {
                                print("Completed");
                              },
                              onChanged: (value) {
                                print(value);
                                setState(() {
                                  currentText = value;
                                });
                              },
                              beforeTextPaste: (text) {
                                print("Allowing to paste $text");
                                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                return true;
                              },
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          hasError
                              ? "*Please fill up all the cells properly"
                              : "",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: "Tidak mendapatkan Kode? ",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 15),
                            children: [
                              TextSpan(
                                  text: " Kirim Ulang",
                                  recognizer: onTapRecognizer,
                                  style: TextStyle(
                                      color: const Color(0xFF088A1E),
                                      fontSize: 16))
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 23.0),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/view_screen');
          },
          child: Container(
            height: 50.0,
            width: 80.0,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 7), // changes position of shadow
                ),
              ],
              color: const Color(0xFF088A1E),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Text(
                'VERIFIKASI',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, 350.0 - 150);
    path.quadraticBezierTo(size.width / 2, 300, size.width, 450.0 - 250);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
