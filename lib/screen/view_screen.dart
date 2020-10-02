import 'package:flutter/material.dart';
import 'package:modalsaham/screen/faq_screen.dart';
import 'package:modalsaham/screen/pralisting_screen.dart';
import 'package:modalsaham/screen/transaksi_screen.dart';
import 'package:modalsaham/screen/welcome_screen.dart';
import './beranda_screen.dart';
import './sidemenu_screen.dart';

class ViewScreen extends StatefulWidget {
  @override
  _ViewScreenState createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 5);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Theme(
      // data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      // child: NavDrawer()
      // ),
      key: _scaffoldKey,
      drawer: NavDrawer(),
      bottomNavigationBar: Container(
        height: 50.0,
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.transparent,
          labelColor: Color(0xFF088A1E),
          unselectedLabelColor: Colors.grey[400],
          tabs: <Widget>[
            new Tab(
              child: Container(
                padding: const EdgeInsets.only(top: 10.0),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      size: 20.0,
                    ),
                    Text(
                      "Home",
                      style: new TextStyle(fontSize: 10.0),
                    ),
                  ],
                ),
              ),
            ),
            new Tab(
              child: Container(
                padding: const EdgeInsets.only(top: 10.0),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.account_balance_wallet,
                      size: 20.0,
                    ),
                    Text(
                      "Transaksi",
                      style: new TextStyle(fontSize: 10.0),
                    ),
                  ],
                ),
              ),
            ),
            new Tab(
              child: Container(
                padding: const EdgeInsets.only(top: 10.0),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.help,
                      size: 20.0,
                    ),
                    Text(
                      "FAQ",
                      style: new TextStyle(fontSize: 10.0),
                    ),
                  ],
                ),
              ),
            ),
            new Tab(
              child: Container(
                padding: const EdgeInsets.only(top: 10.0),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.view_list,
                      size: 20.0,
                    ),
                    Text(
                      "Pralisting",
                      style: new TextStyle(fontSize: 10.0),
                    ),
                  ],
                ),
              ),
            ),
            new Tab(
              child: Container(
                padding: const EdgeInsets.only(top: 10.0),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      size: 20.0,
                    ),
                    Text(
                      "Account",
                      style: new TextStyle(fontSize: 10.0),
                    ),
                  ],
                ),
              ),
            ),
            // new Tab(
            //     icon: new Icon(Icons.account_balance_wallet),
            //     text: "Transaksi"),
            // new Tab(icon: new Icon(Icons.help), text: "Bantuan"),
            // new Tab(icon: new Icon(Icons.view_list), text: "Pra Listing"),
            // new Tab(icon: new Icon(Icons.person), text: "Account"),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        // elevation: 0.0,
        leading: new IconButton(
          color: Colors.black,
          icon: Icon(Icons.menu),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        title: Center(
          child: Image.asset(
            "assets/images/logo.jpg",
            width: 160.0,
            height: 120.0,
          ),
        ),
        actions: <Widget>[
          new IconButton(
            color: Colors.black,
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Add your onPressed code here!
      //   },
      //   child: Icon(Icons.help),
      //   backgroundColor: Colors.redAccent[700],
      // ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new BerandaScreen(),
          new TransaksiScreen(),
          new FaqScreen(),
          new PralistingScreen(),
          new WelcomeScreen(),
        ],
      ),
    );
  }
}
