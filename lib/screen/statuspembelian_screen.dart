import 'package:flutter/material.dart';

class StatusPembelianScreen extends StatefulWidget {
  @override
  _StatusPembelianScreenState createState() => _StatusPembelianScreenState();
}

class _StatusPembelianScreenState extends State<StatusPembelianScreen> {
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
                        height: 260.0,
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
                                    onPressed: () {},
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
                                "BERHASIL",
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
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/images/confirm.png"),
                          Text(
                            "Pembelian saham berhasil!",
                            style: TextStyle(
                              fontSize: 23.0,
                              // color: Color(0xFF707070),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Detail Pembelian :",
                              style: TextStyle(
                                fontSize: 23.0,
                                color: Color(0xFF707070),
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kode Pembelian",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Color(0xFF707070),
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "TR-98as9dodwioa9",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lembar Saham",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Color(0xFF707070),
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "6",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Harga Saham",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Color(0xFF707070),
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Rp. 600.000",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Tanggal Pembelian",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Color(0xFF707070),
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "24 Juli 2020",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/view_screen');
                          },
                          child: Container(
                            height: 50.0,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(
                                      0, 7), // changes position of shadow
                                ),
                              ],
                              color: const Color(0xFF088A1E),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                'SELESAI',
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
                    ],
                  ),
                ),
              ],
            ),
          ],
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
