import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

class DepositScreen extends StatefulWidget {
  @override
  _DepositScreenState createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF088A1E),
      ),
      home: Scaffold(
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
                            horizontal: 0.0, vertical: 40.0),
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
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25.0),
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
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              height: 60.0,
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: TabBar(
                                labelColor: Colors.black,
                                unselectedLabelColor: Colors.white,
                                indicatorSize: TabBarIndicatorSize.tab,
                                controller: _controller,
                                indicator: new BubbleTabIndicator(
                                  indicatorHeight: 50.0,
                                  indicatorColor: Colors.white,
                                  tabBarIndicatorSize: TabBarIndicatorSize.tab,
                                ),
                                tabs: [
                                  new Tab(
                                    text: 'Deposit',
                                  ),
                                  new Tab(
                                    text: 'Riwayat Deposit',
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(30)),
                              ),
                              height: 620.0,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: new TabBarView(
                                  controller: _controller,
                                  children: <Widget>[
                                    Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 25.0,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Jumlah Deposit',
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: 'OpenSans',
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 8.0),
                                                      child: Container(
                                                        alignment:
                                                            Alignment.centerLeft,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey[200],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20.0),
                                                        ),
                                                        height: 60.0,
                                                        child: TextField(
                                                          keyboardType:
                                                              TextInputType.text,
                                                          style: TextStyle(
                                                            color: Colors.black87,
                                                            fontFamily:
                                                                'OpenSans',
                                                          ),
                                                          decoration:
                                                              new InputDecoration(
                                                            // labelText: 'Name',
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                              borderSide: BorderSide(
                                                                  color: const Color(
                                                                      0xFF088A1E),
                                                                  width: 1.0),
                                                            ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .grey[200],
                                                                  width: 1.0),
                                                            ),
                                                            hintText:
                                                                'Masukkan Jumlah Deposit',
                                                            hintStyle: TextStyle(
                                                              color: Colors
                                                                  .grey[400],
                                                              fontFamily:
                                                                  'OpenSans',
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Metode Transfer',
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: 'OpenSans',
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 8.0),
                                                      child: Container(
                                                        alignment:
                                                            Alignment.centerLeft,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey[200],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20.0),
                                                        ),
                                                        height: 60.0,
                                                        child: TextField(
                                                          keyboardType:
                                                              TextInputType.text,
                                                          style: TextStyle(
                                                            color: Colors.black87,
                                                            fontFamily:
                                                                'OpenSans',
                                                          ),
                                                          decoration:
                                                              new InputDecoration(
                                                            // labelText: 'Name',
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                              borderSide: BorderSide(
                                                                  color: const Color(
                                                                      0xFF088A1E),
                                                                  width: 1.0),
                                                            ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .grey[200],
                                                                  width: 1.0),
                                                            ),
                                                            hintStyle: TextStyle(
                                                              color: Colors
                                                                  .grey[400],
                                                              fontFamily:
                                                                  'OpenSans',
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Pilih Bank',
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: 'OpenSans',
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 8.0),
                                                      child: Container(
                                                        alignment:
                                                            Alignment.centerLeft,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey[200],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20.0),
                                                        ),
                                                        height: 60.0,
                                                        child: TextField(
                                                          keyboardType:
                                                              TextInputType.text,
                                                          style: TextStyle(
                                                            color: Colors.black87,
                                                            fontFamily:
                                                                'OpenSans',
                                                          ),
                                                          decoration:
                                                              new InputDecoration(
                                                            // labelText: 'Name',
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                              borderSide: BorderSide(
                                                                  color: const Color(
                                                                      0xFF088A1E),
                                                                  width: 1.0),
                                                            ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .grey[200],
                                                                  width: 1.0),
                                                            ),
                                                            
                                                            hintStyle: TextStyle(
                                                              color: Colors
                                                                  .grey[400],
                                                              fontFamily:
                                                                  'OpenSans',
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
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0,
                                                vertical: 23.0),
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.pushNamed(
                                                    context, '/view_screen');
                                              },
                                              child: Container(
                                                height: 50.0,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.9,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                      spreadRadius: 1,
                                                      blurRadius: 5,
                                                      offset: Offset(0,
                                                          7), // changes position of shadow
                                                    ),
                                                  ],
                                                  color:
                                                      const Color(0xFF088A1E),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'DEPOSIT',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        // bottomNavigationBar: Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 23.0),
        //   child: GestureDetector(
        //     onTap: () {
        //       Navigator.pushNamed(context, '/view_screen');
        //     },
        //     child: Container(
        //       height: 50.0,
        //       width: 80.0,
        //       decoration: BoxDecoration(
        //         boxShadow: [
        //           BoxShadow(
        //             color: Colors.grey.withOpacity(0.5),
        //             spreadRadius: 1,
        //             blurRadius: 5,
        //             offset: Offset(0, 7), // changes position of shadow
        //           ),
        //         ],
        //         color: const Color(0xFF088A1E),
        //         borderRadius: BorderRadius.circular(25),
        //       ),
        //       child: Center(
        //         child: Text(
        //           'DEPOSIT',
        //           style: TextStyle(
        //             color: Colors.white,
        //             fontSize: 20.0,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
