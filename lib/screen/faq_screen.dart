import 'package:flutter/material.dart';
import 'package:modalsaham/screen/ajuper_screen.dart';

class FaqScreen extends StatefulWidget {
  @override
  _FaqScreenState createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen>
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
                  child: Text("Ajukan Pertanyaan"),
                ),
                new Tab(
                  child: Text("Riwayat Pertanyaan"),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(60.0)),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new AjuperScreen(),
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
