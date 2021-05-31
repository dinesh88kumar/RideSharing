import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hovering/hovering.dart';

import 'package:smoose_20_05/responsive/pages/Payments/payments.dart';
import 'package:smoose_20_05/responsive/pages/analytics/analytics.dart';
import 'package:smoose_20_05/responsive/pages/billing/billing.dart';
import 'package:smoose_20_05/responsive/pages/dashboard/Dashboard.dart';
import 'package:smoose_20_05/responsive/pages/feedbacks/Feedbacks.dart';

import 'package:smoose_20_05/responsive/pages/hotels/managers.dart';
import 'package:smoose_20_05/responsive/pages/hotels/menu.dart';
import 'package:smoose_20_05/responsive/responsive.dart';

int index = 0;
List<Widget> list = [
  Dashboard(),
  Payments(),
  Analytics(),
  Manager(),
  Menu1(),
  FeedBack(),
  Billingpage()
];

class RoutePage extends StatefulWidget {
  @override
  _RoutePageState createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
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
          b1: size.width * 0.8,
          e: size.width * 0.28,
          f: size.width * 0.33,
        ),
        maxViewDesktop: Navigation(
          closed: true,
          a: size.width * 0.2,
          a1: size.width * 0.1,
          b: size.width * 0.8,
          b1: size.width * 0.9,
          e: size.width * 0.31,
          f: size.width * 0.46,
        ),
        minViewDesktop: Navigation(
            closed: true,
            a: size.width * 0.2,
            a1: size.width * 0.1,
            b: size.width * 0.8,
            b1: size.width * 0.9,
            e: size.width * 0.25,
            f: size.width * 0.35));
  }
}

class Navigation extends StatefulWidget {
  var a;
  var a1;
  var b;
  var b1;
  var e;
  var f;
  bool closed;

  Navigation(
      {this.a, this.a1, this.b, this.b1, required this.closed, this.e, this.f});
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
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
                    Container(
                      //  height: 80,
                      child: Image.asset('logo/name.png'),
                    ),
                    SizedBox(width: size.width / 22),
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
                                color: Color(0xffff5a1e),
                              )
                            : Icon(
                                Icons.arrow_forward,
                                size: 28,
                                color: Color(0xffff5a1e),
                              )),
                    SizedBox(width: widget.e),
                    HoverContainer(
                      height: 55,
                      width: size.width / 10,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent.shade100,
                          borderRadius: BorderRadius.circular(5)),
                      hoverDecoration: BoxDecoration(
                          color: Color(0xffff5a1e),
                          borderRadius: BorderRadius.circular(5)),
                      child: HoverWidget(
                          child: Center(
                            child: Text(
                              'Live Tables',
                              style: TextStyle(
                                  color: Color(0xffff5a1e), fontSize: 14),
                            ),
                          ),
                          hoverChild: Center(
                            child: Text(
                              'Live Tables',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                          onHover: (value) {}),
                    ),
                    SizedBox(
                      width: size.width / 40,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100, shape: BoxShape.circle),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.crop_free_sharp,
                            color: Color(0xffff5a1e),
                          )),
                    ),
                    SizedBox(
                      width: size.width / 40,
                    ),
                    Container(
                      height: 60,
                      width: size.width / 6,
                      decoration: BoxDecoration(
                          color: Color(0xffff5a1e),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              child: Center(child: Text('profile')),
                            ),
                            SizedBox(
                              width: size.width / 30,
                            ),
                            Container(
                              //    padding: EdgeInsets.only(right: 40),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Image.asset(
                                'images/profile/profile.png',
                                scale: 3.5,
                              ),
                            ),
                          ]),
                    )
                  ],
                )
              : Row(children: [
                  Container(
                    child: Image.asset('logo/logo.png'),
                  ),
                  SizedBox(width: size.width / 50),
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
                              color: Color(0xffff5a1e),
                            )
                          : Icon(
                              Icons.arrow_forward,
                              size: 28,
                              color: Color(0xffff5a1e),
                            )),
                  SizedBox(width: widget.f),
                  HoverContainer(
                    height: 55,
                    width: size.width / 10,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent.shade100,
                        borderRadius: BorderRadius.circular(5)),
                    hoverDecoration: BoxDecoration(
                        color: Color(0xffff5a1e),
                        borderRadius: BorderRadius.circular(5)),
                    child: HoverWidget(
                        child: Center(
                          child: Text(
                            'Live Tables',
                            style: TextStyle(
                                color: Color(0xffff5a1e), fontSize: 14),
                          ),
                        ),
                        hoverChild: Center(
                          child: Text(
                            'Live Tables',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        onHover: (value) {}),
                  ),
                  SizedBox(
                    width: size.width / 60,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100, shape: BoxShape.circle),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.crop_free_sharp,
                          color: Color(0xffff5a1e),
                        )),
                  ),
                  SizedBox(
                    width: size.width / 60,
                  ),
                  Container(
                      height: 60,
                      width: size.width / 4.5,
                      decoration: BoxDecoration(
                          color: Color(0xffff5a1e),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(child: AutoSizeText('profile')),
                            SizedBox(
                              width: size.width / 45,
                            ),
                            Container(
                              //    padding: EdgeInsets.only(right: 40),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Image.asset(
                                'images/profile/profile.png',
                                scale: 3.5,
                              ),
                            ),
                          ]))
                ])),
      body: Container(
        child: Row(
          children: [
            Container(
                height: double.infinity,
                color: Colors.white,
                width: close ? widget.a : widget.a1,
                child: close
                    ? Column(children: [
                        gest('Dashboard', 0, Icon(Icons.dashboard)),
                        SizedBox(height: 10),
                        gest('Payments', 1, Icon(Icons.monetization_on)),
                        SizedBox(height: 10),
                        gest('Analytics', 2, Icon(Icons.leaderboard)),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {},
                          child: ExpansionTile(
                            collapsedIconColor: Color(0xffff5a1e),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.horizontal_split_outlined,
                                  color: index == 3 || index == 4
                                      ? Color(0xffff5a1e)
                                      : Colors.grey,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Hotels',
                                  style: TextStyle(
                                    color: index == 3 || index == 4
                                        ? Color(0xffff5a1e)
                                        : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            children: [
                              gest('Manager', 3,
                                  Icon(Icons.account_box_rounded)),
                              gest('Menu', 4, Icon(Icons.no_food))
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        gest('feedbacks', 5, Icon(Icons.feedback)),
                        SizedBox(height: 10),
                        gest('Billing', 6, Icon(Icons.assignment))
                      ])
                    : Column(
                        children: [
                          gest1(0, Icon(Icons.dashboard)),
                          SizedBox(height: 10),
                          gest1(1, Icon(Icons.monetization_on)),
                          SizedBox(height: 10),
                          gest1(2, Icon(Icons.leaderboard)),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {},
                            child: ExpansionTile(
                              collapsedIconColor: Color(0xffff5a1e),
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.horizontal_split_outlined,
                                    color: index == 3 || index == 4
                                        ? Color(0xffff5a1e)
                                        : Colors.grey,
                                  ),
                                ],
                              ),
                              children: [
                                gest1(3, Icon(Icons.account_box_rounded)),
                                gest1(4, Icon(Icons.no_food))
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          gest1(5, Icon(Icons.feedback)),
                          SizedBox(height: 10),
                          gest1(6, Icon(Icons.assignment))
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
        color: index == b ? Colors.grey.shade100 : Colors.white,
        child: Row(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 100),
              height: 60.0,
              width: 4.0,
              decoration: BoxDecoration(
                  color: index == b ? Color(0xffff5a1e) : Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
            ),
            SizedBox(width: 10),
            Icon(
              c.icon,
              color: index == b ? Color(0xffff5a1e) : Colors.black54,
            ),
            SizedBox(width: 10),
            Text(
              '$a',
              style: TextStyle(
                color: index == b ? Color(0xffff5a1e) : Colors.black54,
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
      child: Container(
        color: index == b ? Colors.grey.shade100 : Colors.white,
        child: Row(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 100),
              height: 60.0,
              width: 4.0,
              decoration: BoxDecoration(
                  color: index == b ? Color(0xffff5a1e) : Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
            ),
            SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: index == b ? Color(0xffff5a1e) : Colors.white),
              height: 50,
              width: 50,
              child: Icon(
                c.icon,
                color: index == b ? Colors.white : Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
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
                    color: Color(0xffff5a1e),
                  ),
                ),
              ),
              SizedBox(width: size.width / 10),
              HoverContainer(
                height: 30,
                width: size.width / 5,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent.shade100,
                    borderRadius: BorderRadius.circular(5)),
                hoverDecoration: BoxDecoration(
                    color: Color(0xffff5a1e),
                    borderRadius: BorderRadius.circular(5)),
                child: HoverWidget(
                    child: Center(
                      child: Text(
                        'Live Tables',
                        style:
                            TextStyle(color: Color(0xffff5a1e), fontSize: 10),
                      ),
                    ),
                    hoverChild: Center(
                      child: Text(
                        'Live Tables',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                    onHover: (value) {}),
              ),
              size.width > 440
                  ? SizedBox(width: size.width / 10)
                  : SizedBox(width: size.width / 30),
              size.width > 440
                  ? Container(
                      height: 40,
                      width: size.width / 12,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.crop_free_sharp,
                            color: Color(0xffff5a1e),
                          )),
                    )
                  : Container(),
              size.width > 440 ? SizedBox(width: size.width / 20) : Container(),
              Container(
                //    padding: EdgeInsets.only(right: 40),
                height: 40,
                width: size.width / 6,
                decoration: BoxDecoration(
                  color: Color(0xffff5a1e),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'images/profile/profile.png',
                  //  scale: 0.4,
                ),
              ),
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
                      color: Color(0xffff5a1e),
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
                title: Text("Analytics"),
                onTap: () => widget.ontap(context, 2)),
            ListTile(
                leading: Icon(Icons.contacts),
                title: Text("manager"),
                onTap: () => widget.ontap(context, 3)),
            ListTile(
                leading: Icon(Icons.contacts),
                title: Text("menu"),
                onTap: () => widget.ontap(context, 4)),
            ListTile(
                leading: Icon(Icons.contacts),
                title: Text("feedbacks"),
                onTap: () => widget.ontap(context, 5)),
            ListTile(
                leading: Icon(Icons.assignment),
                title: Text("Billing"),
                onTap: () => widget.ontap(context, 6)),
          ],
        ),
      ),
    );
  }
}
