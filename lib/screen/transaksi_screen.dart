import 'package:flutter/material.dart';

class TransaksiScreen extends StatefulWidget {
  @override
  _TransaksiScreenState createState() => _TransaksiScreenState();
}

class _TransaksiScreenState extends State<TransaksiScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          child: Material(
            color: Colors.white,
            child: TabBar(
              controller: controller,
              indicatorColor: Color(0xFF088A1E),
              labelColor: Color(0xFF088A1E),
              unselectedLabelColor: Colors.grey[400],
              tabs: <Widget>[
                new Tab(
                  child: Text("Transaksi"),
                ),
                new Tab(
                  child: Text("Riwayat Transaksi"),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(60.0)),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/nodata.png"),
                  Text("Data tidak ditemukan")
                ],
              ),
            ),
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/nodata.png"),
                  Text("Data tidak ditemukan")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
