import 'package:flutter/material.dart';
// import 'package:modalsaham/screen/menu/pralisting_screen.dart';
import 'package:modalsaham/screen/splash_screen.dart';
import 'package:modalsaham/screen/view_screen.dart';
import 'package:modalsaham/screen/welcome_screen.dart';
import 'package:modalsaham/screen/masuk_screen.dart';
import 'package:modalsaham/screen/daftar_screen.dart';
import 'package:modalsaham/screen/beranda_screen.dart';
import 'package:modalsaham/screen/kodeotp_screen.dart';
import 'package:modalsaham/screen/stepper_screen.dart';
import 'package:modalsaham/screen/deposit_screen.dart';
import 'package:modalsaham/screen/statuspembelian_screen.dart';
import 'package:modalsaham/screen/detail_screen.dart';
// import 'package:modalsaham/n.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    // ]);
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/statuspembelian_screen': (BuildContext context) =>
            new StatusPembelianScreen(),
        '/view_screen': (BuildContext context) => new ViewScreen(),
        '/welcome_screen': (BuildContext context) => new WelcomeScreen(),
        '/masuk_screen': (BuildContext context) => new MasukScreen(),
        '/daftar_screen': (BuildContext context) => new DaftarScreen(),
        '/kodeotp_screen': (BuildContext context) => new KodeotpScreen(),
        '/stepper_screen': (BuildContext context) => new StepperScreen(),
        '/detail_screen': (BuildContext context) => new DetailScreen(),
        '/deposit_screen': (BuildContext context) => new DepositScreen(),
      },
    );
  }
}
