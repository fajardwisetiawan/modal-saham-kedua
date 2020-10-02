import 'package:flutter/material.dart';

class MasukScreen extends StatefulWidget {
  @override
  _MasukScreenState createState() => _MasukScreenState();
}

class _MasukScreenState extends State<MasukScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                "MASUK",
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
                  padding: const EdgeInsets.symmetric(horizontal: 58.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 23.0),
                        child: Wrap(
                          children: [
                            Text(
                              "Silahkan masuk dengan nomor HP-mu yang terdaftar",
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 23.0),
                        child: Row(
                          children: [
                            Container(
                              height: 20.0,
                              width: 32.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black26,
                                ),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/indo.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "+62",
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.533,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black38),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: const Color(0xFF088A1E),
                                    ),
                                  ),
                                  hintText: "Nomor Handphone",
                                  hintStyle: TextStyle(color: Colors.black26),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 23.0),
                        child: Row(
                          children: [
                            Text("Belum punya akun? "),
                            Text(
                              "Daftar",
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
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
            Navigator.pushNamed(context, '/daftar_screen');
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
                'MASUK',
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
