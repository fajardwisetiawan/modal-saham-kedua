import 'package:flutter/material.dart';
import 'package:modalsaham/screen/statuspembelian_screen.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // elevation: 0.0,
        leading: new IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Image.asset(
          "assets/images/logo.jpg",
          width: 160.0,
          height: 120.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 15.0),
              child: Container(
                // height: 370.0,
                height: 220.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    DetailPralisting(
                      gambar: 'assets/images/list4.jpg',
                    ),
                    DetailPralisting(
                      gambar: 'assets/images/list6.jpg',
                    ),
                    DetailPralisting(
                      gambar: 'assets/images/list4.jpg',
                    ),
                    DetailPralisting(
                      gambar: 'assets/images/list6.jpg',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Penyedia Akomodasi Makanan & Minuman",
                    style: TextStyle(
                        color: Colors.blue[800],
                        fontSize: 15.0,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Kue Balok Mang Salam",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Boga Sinar Malam",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF9A9A9A)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Mulai dari Rp. 600.000",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF088A1E)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                color: Color(0xFFF4F4F4),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Pra Penawaran Saham",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 3.0,
                            ),
                            Text(
                              "02-11-2020",
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF9A9A9A),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            FittedBox(
                              child: Text(
                                "|",
                                style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  color: Colors.black26,
                                  fontSize: 50.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Penawaran Saham",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 3.0,
                            ),
                            Text(
                              "02-11-2020",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF9A9A9A),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.9,
                  animation: true,
                  lineHeight: 20.0,
                  animationDuration: 4500,
                  percent: 0.84,
                  center: Text("84.0%", style: TextStyle(color: Colors.white)),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Colors.green[800],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25.0, top: 15.0),
                          child: Container(
                            padding: const EdgeInsets.all(40.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                right: BorderSide(
                                  //                   <--- left side
                                  color: Colors.grey[300],
                                  width: 0.5,
                                ),
                                bottom: BorderSide(
                                  //                    <--- top side
                                  color: Colors.grey[300],
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Jumlah Investor",
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Text(
                                  "755 Orang",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xFF088A1E),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(right: 25.0, top: 15.0),
                          child: Container(
                            padding: const EdgeInsets.all(40.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                left: BorderSide(
                                  //                   <--- left side
                                  color: Colors.grey[300],
                                  width: 0.5,
                                ),
                                bottom: BorderSide(
                                  //                    <--- top side
                                  color: Colors.grey[300],
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Kode Saham",
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Text(
                                  "ATPR",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xFF088A1E),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 25.0, bottom: 15.0),
                          child: Container(
                            padding: const EdgeInsets.all(40.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                right: BorderSide(
                                  //                   <--- left side
                                  color: Colors.grey[300],
                                  width: 0.5,
                                ),
                                top: BorderSide(
                                  //                    <--- top side
                                  color: Colors.grey[300],
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Sisa Waktu",
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Text(
                                  "40 Hari",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xFF088A1E),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(right: 25.0, bottom: 15.0),
                          child: Container(
                            padding: const EdgeInsets.all(40.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                left: BorderSide(
                                  //                   <--- left side
                                  color: Colors.grey[300],
                                  width: 0.5,
                                ),
                                top: BorderSide(
                                  //                    <--- top side
                                  color: Colors.grey[300],
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Periode Dividen",
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Text(
                                  "2 Bulan",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xFF088A1E),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 10.0,
                    color: Colors.grey[100],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 23.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/list1.jpg"),
                                radius: 50.0,
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Expanded(
                              flex: 5,
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Text(
                                        "Tentang Penerbit",
                                        style: TextStyle(
                                            fontSize: 23.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Wrap(
                                      children: [
                                        Text(
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                          style: TextStyle(
                                            color: Color(0xFF9A9A9A),
                                          ),
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.justify,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 10.0,
                    color: Colors.grey[100],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Harga Saham"),
                                Text(
                                  "Rp. 100.000",
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Total Saham"),
                                Text(
                                  "100.000 Lembar",
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Total Saham (Rp.)"),
                                Text(
                                  "Rp. 100.000.000",
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 15.0),
                    child: Container(
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Lokasi"),
                              Image.asset(
                                "assets/images/peta.jpg",
                                height: 190.0,
                                width: 351.4,
                              ),
                              Wrap(
                                children: [
                                  Text(
                                      "Jl. Raya Bogor Cililitan No.4, RT.4/RW.1, Kramat Jati, Kec. Kramat\njati, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13510"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 18.0),
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  color: Color(0xFF088A1E),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                height: 60.0,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.play_circle_filled,
                                      color: Colors.white,
                                      size: 30.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Profil Perusahaan",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.picture_as_pdf,
                                    color: Color(0xFF088A1E),
                                    size: 30.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Download Prospektus",
                                      style: TextStyle(
                                        color: Color(0xFF088A1E),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 10.0,
                    color: Colors.grey[100],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      decoration: new BoxDecoration(color: Colors.white),
                      child: new TabBar(
                        indicatorColor: Color(0xFF088A1E),
                        labelColor: Color(0xFF088A1E),
                        unselectedLabelColor: Colors.grey[400],
                        controller: _controller,
                        tabs: [
                          new Tab(
                            text: 'Saham Tersisa',
                          ),
                          new Tab(
                            text: 'Saham Terjual',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey[100],
                    height: 125.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: new TabBarView(
                        controller: _controller,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 18.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Presentasi",
                                            style: TextStyle(
                                                color: Color(0xFF6C6C6C)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Total Saham",
                                            style: TextStyle(
                                                color: Color(0xFF6C6C6C)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Total Saham (Rp.)",
                                            style: TextStyle(
                                                color: Color(0xFF6C6C6C)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 18.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: FittedBox(
                                            child: Text(
                                              "29.12%",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: FittedBox(
                                            child: Text(
                                              "25.278 Lembar",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: FittedBox(
                                            child: Text(
                                              "Rp. 568.0245.365",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 18.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Presentasi",
                                            style: TextStyle(
                                                color: Color(0xFF6C6C6C)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Total Saham",
                                            style: TextStyle(
                                                color: Color(0xFF6C6C6C)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Total Saham (Rp.)",
                                            style: TextStyle(
                                                color: Color(0xFF6C6C6C)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 18.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: FittedBox(
                                            child: Text(
                                              "29.12%",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: FittedBox(
                                            child: Text(
                                              "25.278 Lembar",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: FittedBox(
                                            child: Text(
                                              "Rp. 568.0245.365",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 18.0),
                    child: GestureDetector(
                      onTap: () {
                        _buttonBeli(context);
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
                              offset:
                                  Offset(0, 7), // changes position of shadow
                            ),
                          ],
                          color: const Color(0xFF088A1E),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            'BELI',
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
      ),
    );
  }
}

class DetailPralisting extends StatelessWidget {
  final String gambar;

  DetailPralisting({
    this.gambar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Row(
        children: <Widget>[
          Container(
            // width: 250.0,
            width: 320.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              image: DecorationImage(
                image: AssetImage(gambar),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _buttonBeli(context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40),),
  ),
  backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext bc) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            child: new Wrap(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Masukkan lembar saham yang ingin Anda beli'),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          height: 60.0,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'OpenSans',
                            ),
                            decoration: new InputDecoration(
                              // labelText: 'Name',
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                    color: const Color(0xFF088A1E), width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                    color: Colors.grey[200], width: 1.0),
                              ),
                              hintText: 'Masukkan Lembar Saham',
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                                fontFamily: 'OpenSans',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total harga saham (IDR)'),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          height: 60.0,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'OpenSans',
                            ),
                            decoration: new InputDecoration(
                              // labelText: 'Name',
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                    color: const Color(0xFF088A1E), width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                    color: Colors.grey[200], width: 1.0),
                              ),
                              hintText: 'Masukkan Harga Saham',
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                                fontFamily: 'OpenSans',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 18.0),
                  child: GestureDetector(
                    onTap: () {
                        Navigator.pushNamed(context, '/statuspembelian_screen');
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
                            offset: Offset(0, 7), // changes position of shadow
                          ),
                        ],
                        color: const Color(0xFF088A1E),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          'BELI',
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
        );
      });
}
