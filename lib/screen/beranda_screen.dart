import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:percent_indicator/percent_indicator.dart';

class BerandaScreen extends StatefulWidget {
  @override
  _BerandaScreenState createState() => _BerandaScreenState();
}

class _BerandaScreenState extends State<BerandaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/stepper_screen');
              },
              child: Container(
                height: 50.0,
                color: Colors.redAccent[700],
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 38.0, vertical: 12.0),
                  child: Wrap(
                    children: [
                      Text(
                        "Akun Anda belum aktif. Silahkan lakukan aktifasi akun terlebih dahulu untuk melakukan transaksi di Modal Saham. Tap disini.",
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: false,
                      height: 230.0,
                    ),
                    items: imageSliders,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100.0,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(28.0)),
                  color: const Color(0xFF088A1E),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.account_balance_wallet,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Saldo",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Rp. 2.000.000",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Icon(
                      //   Icons.add_circle,
                      //   color: Colors.white,
                      //   size: 50.0,
                      // ),
                      IconButton(
                        icon: Icon(Icons.add_circle),
                        color: Colors.white,
                        iconSize: 50.0,
                        onPressed: () {
                          Navigator.pushNamed(context, '/deposit_screen');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green[200],
                        radius: 32.0,
                        child: Container(
                          child: Icon(
                            Icons.credit_card,
                            color: const Color(0xFF088A1E),
                            size: 35.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Saldo"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green[200],
                        radius: 32.0,
                        child: Container(
                          child: Icon(
                            Icons.account_balance_wallet,
                            color: const Color(0xFF088A1E),
                            size: 35.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Dompet"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green[200],
                        radius: 32.0,
                        child: Container(
                          child: Icon(
                            Icons.history,
                            color: const Color(0xFF088A1E),
                            size: 35.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Riwayat"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green[200],
                        radius: 32.0,
                        child: Container(
                          child: Icon(
                            Icons.menu,
                            color: const Color(0xFF088A1E),
                            size: 35.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Lainnya"),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text("Platform Equity Crownd Funding",
                        style: new TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold)),
                    Text(
                      "Anda punya bisnis? Sedang mencari pemodal? \n Daftar disini",
                      style: new TextStyle(fontSize: 17.0),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Container(
                height: 35.0,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: const Color(0xFF088A1E),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'Saya mau daftarkan bisnis',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    color: const Color(0xFF088A1E),
                    width: 3.0,
                    height: 15.0,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Container(
                    child: Text(
                      "Proyek Aktif",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/detail_screen');
                },
                child: Container(
                  height: 400.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      ListItem(
                        gambarCD2: 'assets/images/list4.jpg',
                        text1: 'Penyedia Akomodasi',
                        text2: 'Salad Nyoo',
                        text3: 'PT Salad Nyoo Indonesia',
                        text4: 'Rp. 1.550.000',
                        text5: '5',
                        text6: '776',
                        text7: 'Rp. 1.800.0000.000',
                        text8: '2 Bulan',
                        percent: 0.84,
                        percentText: '84.0%',
                      ),
                      ListItem(
                        gambarCD2: 'assets/images/list6.jpg',
                        text1: 'Penyedia Akomodasi',
                        text2: 'Salad Nyoo',
                        text3: 'PT Salad Nyoo Indonesia',
                        text4: 'Rp. 1.250.000',
                        text5: '4',
                        text6: '856',
                        text7: 'Rp. 2.500.0000.000',
                        text8: '6 Bulan',
                        percent: 0.12,
                        percentText: '12.0%',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    color: const Color(0xFF088A1E),
                    width: 3.0,
                    height: 15.0,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Container(
                    child: Text(
                      "Proyek Selesai",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 20.0),
              child: Container(
                height: 400.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ListItem(
                      gambarCD2: 'assets/images/list4.jpg',
                      text1: 'Penyedia Akomodasi',
                      text2: 'Salad Nyoo',
                      text3: 'PT Salad Nyoo Indonesia',
                      text4: 'Rp. 1.550.000',
                      text5: '5',
                      text6: '776',
                      text7: 'Rp. 1.800.0000.000',
                      text8: '2 Bulan',
                      percent: 0.84,
                      percentText: '84.0%',
                    ),
                    ListItem(
                      gambarCD2: 'assets/images/list6.jpg',
                      text1: 'Penyedia Akomodasi',
                      text2: 'Salad Nyoo',
                      text3: 'PT Salad Nyoo Indonesia',
                      text4: 'Rp. 1.250.000',
                      text5: '4',
                      text6: '856',
                      text7: 'Rp. 2.500.0000.000',
                      text8: '6 Bulan',
                      percent: 0.12,
                      percentText: '12.0%',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        child: Container(
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            color: Colors.grey[100],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(
                  item,
                  fit: BoxFit.cover,
                  height: 230.0,
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    )
    .toList();

class ListItem extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String text6;
  final String text7;
  final String text8;
  final double percent;
  final String percentText;
  final String gambarCD2;

  ListItem({
    this.gambarCD2,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.text5,
    this.text6,
    this.text7,
    this.text8,
    this.percent,
    this.percentText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Stack(
        children: <Widget>[
          Container(
            width: 250.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[300],
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  height: 210.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        topLeft: Radius.circular(5)),
                    image: DecorationImage(
                      image: AssetImage(gambarCD2),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        text1,
                        style: TextStyle(color: Colors.blue[800]),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        text2,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(text3),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: <Widget>[
                          Text("Mulai dari"),
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            text4,
                            style: TextStyle(
                                color: Colors.green[800],
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          LinearPercentIndicator(
                            width: 220.0,
                            animation: true,
                            lineHeight: 15.0,
                            animationDuration: 4500,
                            percent: percent,
                            center: Text(percentText,
                                style: TextStyle(color: Colors.white)),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Colors.green[800],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Wrap(
                        children: <Widget>[
                          FittedBox(
                            child: Text("Sisa waktu : 5 Hari - 776 Investor",
                                style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Total Pendanaan",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  FittedBox(
                                    child: Text(
                                      text7,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Periode Deviden",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  FittedBox(
                                    child: Text(
                                      text8,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
