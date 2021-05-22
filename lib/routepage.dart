import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:smoose_20_05/responsive/pages/Payments/payments.dart';
import 'package:smoose_20_05/responsive/pages/dashboard/Dashboard.dart';
import 'package:smoose_20_05/responsive/pages/feedbacks/Feedbacks.dart';

import 'package:smoose_20_05/responsive/pages/hotels/managers.dart';
import 'package:smoose_20_05/responsive/pages/hotels/menu.dart';
import 'package:smoose_20_05/responsive/responsive.dart';

class RoutePage extends StatefulWidget {
  @override
  _RoutePageState createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  int index = 0;
  List<Widget> list = [Dashboard(), Payments(), Manager(), Menu(), Feedbacks()];
  bool closed = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Responsive(
        mobile: Mobile(),
        tab: Navigation(
            closed: false,
            a: size.width * 0.25,
            a1: size.width * 0.2,
            b: size.width * 0.75,
            b1: size.width * 0.8),
        maxViewDesktop: Navigation(
          closed: true,
          a: size.width * 0.2,
          a1: size.width * 0.1,
          b: size.width * 0.8,
          b1: size.width * 0.9,
        ),
        minViewDesktop: Navigation(
          closed: true,
          a: size.width * 0.2,
          a1: size.width * 0.1,
          b: size.width * 0.8,
          b1: size.width * 0.9,
        ));
  }
}

class Navigation extends StatefulWidget {
  var a;
  var a1;
  var b;
  var b1;
  bool closed;

  Navigation({this.a, this.a1, this.b, this.b1, required this.closed});
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int index = 0;
  List<Widget> list = [Dashboard(), Payments(), Manager(), Menu(), Feedbacks()];

  // bool closed = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var close = widget.closed == true;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          toolbarHeight: 120,
          title: close
              ? Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Image.asset('logo/logo.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              'Smoose',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              '  console',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: size.width / 8),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.closed = !widget.closed;
                          });
                        },
                        child: close
                            ? Icon(
                                Icons.menu,
                                size: 28,
                                color: Colors.orange,
                              )
                            : Icon(
                                Icons.arrow_forward,
                                size: 28,
                                color: Colors.orange,
                              )),
                  ],
                )
              : Row(
                  children: [
                    Container(
                      child: Image.asset('logo/logo.png'),
                    ),
                    SizedBox(width: size.width / 23),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.closed = !widget.closed;
                          });
                        },
                        child: close
                            ? Icon(
                                Icons.menu,
                                size: 28,
                                color: Colors.orange,
                              )
                            : Icon(
                                Icons.arrow_forward,
                                size: 28,
                                color: Colors.orange,
                              )),
                  ],
                )),
      body: Container(
        child: Row(
          children: [
            Container(
                height: double.infinity,
                color: Colors.white70,
                width: close ? widget.a : widget.a1,
                child: close
                    ? Column(children: [
                        gest('Dashboard', 0, Icon(Icons.dashboard)),
                        SizedBox(height: 10),
                        gest('Payments', 1, Icon(Icons.monetization_on)),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {},
                          child: ExpansionTile(
                            collapsedIconColor: Colors.orange,
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.horizontal_split_outlined,
                                  color: index == 2 || index == 3
                                      ? Colors.orange
                                      : Colors.grey,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Hotels',
                                  style: TextStyle(
                                    color: index == 2 || index == 3
                                        ? Colors.orange
                                        : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            children: [
                              gest('Manager', 2,
                                  Icon(Icons.account_box_rounded)),
                              gest('Menu', 3, Icon(Icons.no_food))
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        gest('feedbacks', 4, Icon(Icons.feedback))
                      ])
                    : Column(
                        children: [
                          gest1(0, Icon(Icons.dashboard)),
                          SizedBox(height: 10),
                          gest1(1, Icon(Icons.monetization_on)),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {},
                            child: ExpansionTile(
                              collapsedIconColor: Colors.orange,
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.horizontal_split_outlined,
                                    color: index == 2 || index == 3
                                        ? Colors.orange
                                        : Colors.grey,
                                  ),
                                ],
                              ),
                              children: [
                                gest1(2, Icon(Icons.account_box_rounded)),
                                gest1(3, Icon(Icons.no_food))
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          gest1(4, Icon(Icons.feedback))
                        ],
                      )),
            Container(
              width: close ? widget.b : widget.b1,
              height: double.infinity,
              color: Colors.pink,
              child: list[index],
            )
          ],
        ),
      ),
    );
  }

  GestureDetector gest(String a, var b, Icon c) {
    return GestureDetector(
      onTap: () {
        setState(() {
          index = b;
        });
      },
      child: Container(
        color: Colors.white,
        child: Row(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 100),
              height: 60.0,
              width: 4.0,
              decoration: BoxDecoration(
                  color: index == b ? Colors.orange : Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
            ),
            SizedBox(width: 10),
            Icon(
              c.icon,
              color: index == b ? Colors.orange : Colors.black54,
            ),
            SizedBox(width: 10),
            Text(
              '$a',
              style: TextStyle(
                color: index == b ? Colors.orange : Colors.black54,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector gest1(var b, Icon c) {
    return GestureDetector(
      onTap: () {
        setState(() {
          index = b;
        });
      },
      child: Row(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 100),
            height: 60.0,
            width: 4.0,
            decoration: BoxDecoration(
                color: index == b ? Colors.orange : Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
          ),
          SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: index == b ? Colors.orange : Colors.white),
            height: 50,
            width: 50,
            child: Icon(
              c.icon,
              color: index == b ? Colors.white : Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  int index = 0;
  List<Widget> list = [Dashboard(), Payments(), Manager(), Menu(), Feedbacks()];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool close = true;
  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  void _closeDrawer() {
    setState(() {
      Navigator.of(context).pop();
      close = !close;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
          leading: Container(
            height: 40,
            padding: EdgeInsets.only(left: size.width * 0.04, top: 10),
            child: Image.asset('logo/logo.png'),
          ),
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  _openDrawer();
                },
                child: Container(
                  padding: EdgeInsets.only(left: size.width * 0.03, top: 10),
                  child: Icon(
                    Icons.menu,
                    size: 28,
                    color: Colors.orange,
                  ),
                ),
              )
            ],
          )),
      body: list[index],
      drawer: Mydrawer(
        ontap: (context, i) {
          setState(() {
            index = i;
            Navigator.pop(context);
          });
        },
      ),
    );
  }
}

class Mydrawer extends StatefulWidget {
  final Function ontap;
  Mydrawer({required this.ontap});
  @override
  _MydrawerState createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool close = true;

  void _closeDrawer() {
    setState(() {
      Navigator.of(context).pop();
      close = !close;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      key: _scaffoldKey,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  padding: EdgeInsets.only(left: size.width * 0.04, top: 15),
                  child: Image.asset('logo/logo.png'),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _closeDrawer();
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: size.width * 0.08, top: 10),
                    child: Icon(
                      Icons.arrow_forward,
                      size: 28,
                      color: Colors.orange,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 60),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Dashboard"),
                onTap: () => widget.ontap(context, 0)),
            ListTile(
                leading: Icon(Icons.play_arrow),
                title: Text("Payments"),
                onTap: () => widget.ontap(context, 1)),
            ListTile(
                leading: Icon(Icons.contacts),
                title: Text("manager"),
                onTap: () => widget.ontap(context, 2)),
            ListTile(
                leading: Icon(Icons.contacts),
                title: Text("menu"),
                onTap: () => widget.ontap(context, 3)),
            ListTile(
                leading: Icon(Icons.contacts),
                title: Text("feedbacks"),
                onTap: () => widget.ontap(context, 4)),
          ],
        ),
      ),
    );
  }
}
