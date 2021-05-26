import 'dart:developer';
import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:smoose_20_05/responsive/pages/dashboard/datatable.dart';
import 'package:smoose_20_05/responsive/pages/dashboard/revenue.dart';
import 'package:smoose_20_05/responsive/pages/dashboard/summary.dart';
import 'package:smoose_20_05/responsive/responsive.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: DashMobile(),
        tab: DashTab(),
        maxViewDesktop: Dash(),
        minViewDesktop: DashMin());
  }
}

class Dash extends StatefulWidget {
  @override
  _DashState createState() => _DashState();
}

class _DashState extends State<Dash> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Container(
          child: ListView(
            controller: scrollController,
            padding: EdgeInsets.all(30),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText('Dashboard',
                          style: GoogleFonts.montserrat(
                              fontSize: 29,
                              fontWeight: FontWeight.w600,
                              textStyle: TextStyle(letterSpacing: 0.5))),
                      AutoSizeText(
                        'Welcome to Smoose Console!',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            textStyle: TextStyle(color: Colors.grey)),
                      ),
                    ],
                  ),
                  HoverContainer(
                    height: 70,
                    width: 260,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5)),
                    hoverDecoration: BoxDecoration(
                        color: Color(0xffff5a1e),
                        borderRadius: BorderRadius.circular(5)),
                    child: HoverWidget(
                      onHover: (event) {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.calendar_today_rounded,
                            color: Color(0xffff5a1e),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Filter Period',
                                style: GoogleFonts.montserrat(
                                    textStyle:
                                        TextStyle(color: Color(0xffff5a1e))),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '13-04-2000',
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            color: Color(0xffff5a1e))),
                                  ),
                                  Text(
                                    '13-04-2000',
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            color: Color(0xffff5a1e))),
                                  )
                                ],
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Color(0xffff5a1e),
                          )
                        ],
                      ),
                      hoverChild: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.calendar_today_rounded,
                            color: Colors.white,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Filter Period',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(color: Colors.white)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '13-04-2000',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            TextStyle(color: Colors.white)),
                                  ),
                                  Text(
                                    '13-04-2000',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            TextStyle(color: Colors.white)),
                                  )
                                ],
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 40),
              //2row
              //1
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                color: Colors.grey.shade100,
                height: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: 7, right: 7, top: 20, bottom: 20),
                      width: size.width / 6,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200),
                              child: Icon(
                                Icons.free_breakfast_outlined,
                                color: Color(0xffff5a1e),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '56',
                                style: GoogleFonts.montserrat(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffff5a1e)),
                              ),
                              Text(
                                'Average bill',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Amount',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text('4%(30days)',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    //2
                    Container(
                      padding: EdgeInsets.only(
                          left: 7, right: 7, top: 20, bottom: 20),
                      width: size.width / 6,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200),
                              child: Icon(
                                Icons.free_breakfast_outlined,
                                color: Color(0xffff5a1e),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '56',
                                style: GoogleFonts.montserrat(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffff5a1e)),
                              ),
                              Text(
                                'Average bill',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Amount',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text('4%(30days)',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    //3
                    Container(
                      padding: EdgeInsets.only(
                          left: 7, right: 7, top: 20, bottom: 20),
                      width: size.width / 6,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200),
                              child: Icon(
                                Icons.free_breakfast_outlined,
                                color: Color(0xffff5a1e),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '56',
                                style: GoogleFonts.montserrat(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffff5a1e)),
                              ),
                              Text(
                                'Average bill',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Amount',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text('4%(30days)',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    //4
                    Container(
                      padding: EdgeInsets.only(
                          left: 7, right: 7, top: 20, bottom: 20),
                      width: size.width / 6,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200),
                              child: Icon(
                                Icons.free_breakfast_outlined,
                                color: Color(0xffff5a1e),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '56',
                                style: GoogleFonts.montserrat(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffff5a1e)),
                              ),
                              Text(
                                'Average bill',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Amount',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text('4%(30days)',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        height: 450,
                        width: size.width / 2.8,
                        padding: EdgeInsets.all(15),
                        child: Summary(
                          a: CrossAxisAlignment.start,
                        )),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        height: 450,
                        width: size.width / 2.6,
                        padding: EdgeInsets.all(15),
                        child: Revenue(
                          a: CrossAxisAlignment.start,
                        )),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Datatable()
            ],
          ),
        ));
  }
}

class DashMin extends StatefulWidget {
  @override
  _DashMinState createState() => _DashMinState();
}

class _DashMinState extends State<DashMin> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      child: ListView(
        controller: scrollController,
        padding: EdgeInsets.all(30),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Dashboard',
                      style: GoogleFonts.montserrat(
                          fontSize: 29,
                          fontWeight: FontWeight.w600,
                          textStyle: TextStyle(letterSpacing: 0.5))),
                  AutoSizeText(
                    'Welcome to Smoose Console!',
                    style: GoogleFonts.montserrat(
                        fontSize: 16, textStyle: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
              HoverContainer(
                height: 70,
                width: 260,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(5)),
                hoverDecoration: BoxDecoration(
                    color: Color(0xffff5a1e),
                    borderRadius: BorderRadius.circular(5)),
                child: HoverWidget(
                  onHover: (event) {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.calendar_today_rounded,
                        color: Color(0xffff5a1e),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Filter Period',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(color: Color(0xffff5a1e))),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '13-04-2000',
                                style: GoogleFonts.montserrat(
                                    textStyle:
                                        TextStyle(color: Color(0xffff5a1e))),
                              ),
                              Text(
                                '13-04-2000',
                                style: GoogleFonts.montserrat(
                                    textStyle:
                                        TextStyle(color: Color(0xffff5a1e))),
                              )
                            ],
                          )
                        ],
                      ),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Color(0xffff5a1e),
                      )
                    ],
                  ),
                  hoverChild: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.calendar_today_rounded,
                        color: Colors.white,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Filter Period',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(color: Colors.white)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '13-04-2000',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(color: Colors.white)),
                              ),
                              Text(
                                '13-04-2000',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(color: Colors.white)),
                              )
                            ],
                          )
                        ],
                      ),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 40),
          //2row
          //1
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
            color: Colors.grey.shade100,
            height: 350,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: 7, right: 7, top: 20, bottom: 20),
                      width: size.width / 3.5,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200),
                              child: Icon(
                                Icons.free_breakfast_outlined,
                                color: Color(0xffff5a1e),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '56',
                                style: GoogleFonts.montserrat(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffff5a1e)),
                              ),
                              Text(
                                'Average bill',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Amount',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text('4%(30days)',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    //2
                    Container(
                      padding: EdgeInsets.only(
                          left: 7, right: 7, top: 20, bottom: 20),
                      width: size.width / 3.5,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200),
                              child: Icon(
                                Icons.free_breakfast_outlined,
                                color: Color(0xffff5a1e),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '56',
                                style: GoogleFonts.montserrat(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffff5a1e)),
                              ),
                              Text(
                                'Average bill',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Amount',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text('4%(30days)',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                //row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //3
                    Container(
                      padding: EdgeInsets.only(
                          left: 7, right: 7, top: 20, bottom: 20),
                      width: size.width / 3.5,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200),
                              child: Icon(
                                Icons.free_breakfast_outlined,
                                color: Color(0xffff5a1e),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '56',
                                style: GoogleFonts.montserrat(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffff5a1e)),
                              ),
                              Text(
                                'Average bill',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Amount',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text('4%(30days)',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    //4
                    Container(
                      padding: EdgeInsets.only(
                          left: 7, right: 7, top: 20, bottom: 20),
                      width: size.width / 3.5,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200),
                              child: Icon(
                                Icons.free_breakfast_outlined,
                                color: Color(0xffff5a1e),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '56',
                                style: GoogleFonts.montserrat(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffff5a1e)),
                              ),
                              Text(
                                'Average bill',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Amount',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text('4%(30days)',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Center(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 450,
                width: size.width / 1.5,
                padding: EdgeInsets.all(15),
                child: Summary(
                  a: CrossAxisAlignment.start,
                )),
          ),
          SizedBox(height: 40),
          Center(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 450,
                width: size.width / 1.5,
                padding: EdgeInsets.all(15),
                child: Revenue(
                  a: CrossAxisAlignment.start,
                )),
          ),
          SizedBox(height: 40),
          Datatable()
        ],
      ),
    ));
  }
}

class DashTab extends StatefulWidget {
  @override
  _DashTabState createState() => _DashTabState();
}

class _DashTabState extends State<DashTab> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: ListView(
            controller: scrollController,
            padding: EdgeInsets.all(30),
            children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Dashboard',
                      style: GoogleFonts.montserrat(
                          fontSize: 29,
                          fontWeight: FontWeight.w600,
                          textStyle: TextStyle(letterSpacing: 0.5))),
                  AutoSizeText(
                    'Welcome to Smoose Console!',
                    style: GoogleFonts.montserrat(
                        fontSize: 16, textStyle: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
              HoverContainer(
                height: 70,
                width: 260,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(5)),
                hoverDecoration: BoxDecoration(
                    color: Color(0xffff5a1e),
                    borderRadius: BorderRadius.circular(5)),
                child: HoverWidget(
                  onHover: (event) {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.calendar_today_rounded,
                        color: Color(0xffff5a1e),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Filter Period',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(color: Color(0xffff5a1e))),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '13-04-2000',
                                style: GoogleFonts.montserrat(
                                    textStyle:
                                        TextStyle(color: Color(0xffff5a1e))),
                              ),
                              Text(
                                '13-04-2000',
                                style: GoogleFonts.montserrat(
                                    textStyle:
                                        TextStyle(color: Color(0xffff5a1e))),
                              )
                            ],
                          )
                        ],
                      ),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Color(0xffff5a1e),
                      )
                    ],
                  ),
                  hoverChild: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.calendar_today_rounded,
                        color: Colors.white,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Filter Period',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(color: Colors.white)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '13-04-2000',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(color: Colors.white)),
                              ),
                              Text(
                                '13-04-2000',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(color: Colors.white)),
                              )
                            ],
                          )
                        ],
                      ),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 40),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
            color: Colors.grey.shade100,
            height: 350,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: 7, right: 7, top: 20, bottom: 20),
                      width: size.width / 3.5,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200),
                              child: Icon(
                                Icons.free_breakfast_outlined,
                                color: Color(0xffff5a1e),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '56',
                                style: GoogleFonts.montserrat(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffff5a1e)),
                              ),
                              Text(
                                'Average bill',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Amount',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text('4%(30days)',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    //2
                    Container(
                      padding: EdgeInsets.only(
                          left: 7, right: 7, top: 20, bottom: 20),
                      width: size.width / 3.5,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200),
                              child: Icon(
                                Icons.free_breakfast_outlined,
                                color: Color(0xffff5a1e),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '56',
                                style: GoogleFonts.montserrat(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffff5a1e)),
                              ),
                              Text(
                                'Average bill',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Amount',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text('4%(30days)',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                //row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //3
                    Container(
                      padding: EdgeInsets.only(
                          left: 7, right: 7, top: 20, bottom: 20),
                      width: size.width / 3.5,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200),
                              child: Icon(
                                Icons.free_breakfast_outlined,
                                color: Color(0xffff5a1e),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '56',
                                style: GoogleFonts.montserrat(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffff5a1e)),
                              ),
                              Text(
                                'Average bill',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Amount',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text('4%(30days)',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    //4
                    Container(
                      padding: EdgeInsets.only(
                          left: 7, right: 7, top: 20, bottom: 20),
                      width: size.width / 3.5,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200),
                              child: Icon(
                                Icons.free_breakfast_outlined,
                                color: Color(0xffff5a1e),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '56',
                                style: GoogleFonts.montserrat(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffff5a1e)),
                              ),
                              Text(
                                'Average bill',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Amount',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text('4%(30days)',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          //
          Center(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 450,
                width: size.width / 1.5,
                padding: EdgeInsets.all(15),
                child: Summary(
                  a: CrossAxisAlignment.start,
                )),
          ),
          SizedBox(height: 40),
          Center(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 450,
                width: size.width / 1.5,
                padding: EdgeInsets.all(15),
                child: Revenue(
                  a: CrossAxisAlignment.start,
                )),
          ),
          SizedBox(height: 40),
          Datatable()
        ]));
  }
}

class DashMobile extends StatefulWidget {
  @override
  _DashMobileState createState() => _DashMobileState();
}

class _DashMobileState extends State<DashMobile> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: ListView(
            controller: scrollController,
            padding: EdgeInsets.all(30),
            children: [
          HoverContainer(
            height: 70,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(5)),
            hoverDecoration: BoxDecoration(
                color: Color(0xffff5a1e),
                borderRadius: BorderRadius.circular(5)),
            child: HoverWidget(
              onHover: (event) {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.calendar_today_rounded,
                    color: Color(0xffff5a1e),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Filter Period',
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: Color(0xffff5a1e))),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '13-04-2000',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(color: Color(0xffff5a1e))),
                          ),
                          Text(
                            '13-04-2000',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(color: Color(0xffff5a1e))),
                          )
                        ],
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Color(0xffff5a1e),
                  )
                ],
              ),
              hoverChild: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.calendar_today_rounded,
                    color: Colors.white,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Filter Period',
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: Colors.white)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '13-04-2000',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(color: Colors.white)),
                          ),
                          Text(
                            '13-04-2000',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(color: Colors.white)),
                          )
                        ],
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
          Container(
            padding: EdgeInsets.only(
                left: size.width / 25,
                right: size.width / 25,
                top: 20,
                bottom: 20),
            width: size.width / 3.5,
            height: 140,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey.shade200),
                    child: Icon(
                      Icons.free_breakfast_outlined,
                      color: Color(0xffff5a1e),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '56',
                      style: GoogleFonts.montserrat(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffff5a1e)),
                    ),
                    Text(
                      'Average bill',
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Amount',
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w400),
                    ),
                    Text('4%(30days)',
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //2
          Container(
            padding: EdgeInsets.only(
                left: size.width / 25,
                right: size.width / 25,
                top: 20,
                bottom: 20),
            width: size.width / 3.5,
            height: 140,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey.shade200),
                    child: Icon(
                      Icons.free_breakfast_outlined,
                      color: Color(0xffff5a1e),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '56',
                      style: GoogleFonts.montserrat(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffff5a1e)),
                    ),
                    Text(
                      'Average bill',
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Amount',
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w400),
                    ),
                    Text('4%(30days)',
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //3
          Container(
            padding: EdgeInsets.only(
                left: size.width / 25,
                right: size.width / 25,
                top: 20,
                bottom: 20),
            width: size.width / 3.5,
            height: 140,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey.shade200),
                    child: Icon(
                      Icons.free_breakfast_outlined,
                      color: Color(0xffff5a1e),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '56',
                      style: GoogleFonts.montserrat(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffff5a1e)),
                    ),
                    Text(
                      'Average bill',
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Amount',
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w400),
                    ),
                    Text('4%(30days)',
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ))
                  ],
                )
              ],
            ),
          ),
          //4
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(
                left: size.width / 25,
                right: size.width / 25,
                top: 20,
                bottom: 20),
            width: size.width / 3.5,
            height: 140,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey.shade200),
                    child: Icon(
                      Icons.free_breakfast_outlined,
                      color: Color(0xffff5a1e),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '56',
                      style: GoogleFonts.montserrat(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffff5a1e)),
                    ),
                    Text(
                      'Average bill',
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Amount',
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w400),
                    ),
                    Text('4%(30days)',
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Smoose Handle Summary',
                  style: GoogleFonts.montserrat(
                      fontSize: 16, fontWeight: FontWeight.w500)),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                height: 80,
                width: size.width / 1,
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HoverContainer(
                      height: 30,
                      width: 50,
                      hoverHeight: 30,
                      hoverWidth: 50,
                      decoration: BoxDecoration(
                          color: Colors.green.shade600,
                          borderRadius: BorderRadius.circular(5)),
                      hoverDecoration: BoxDecoration(
                          color: Colors.green.shade900,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text('14',
                              style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white))),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              AutoSizeText(
                                'Pending',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.indigo.shade900),
                                maxLines: 2,
                              ),
                              AutoSizeText(
                                'Notification ',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.indigo.shade900),
                                maxLines: 2,
                              ),
                              Icon(
                                Icons.notifications_rounded,
                                color: Colors.green.shade600,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              AutoSizeText(
                                'Manage',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffff5a1e)),
                                maxLines: 2,
                              ),
                              AutoSizeText(
                                'Notifications',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffff5a1e)),
                                maxLines: 2,
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  color: Color(0xffff5a1e))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 80,
                          width: size.width / 1.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText('8',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.indigo)),
                              AutoSizeText('Order Notification',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //2
                    Center(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 80,
                          width: size.width / 1.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText('8',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.indigo)),
                              AutoSizeText('Order Notification',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //3
                    Center(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 80,
                          width: size.width / 1.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText('8',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.indigo)),
                              AutoSizeText('Order Notification',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54)),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('Occupied',
                            style: GoogleFonts.montserrat(
                                color: Colors.black54, fontSize: 13)),
                        Text('Table (3/10)',
                            style: GoogleFonts.montserrat(
                                color: Colors.black54, fontSize: 13))
                      ],
                    ),
                    LinearPercentIndicator(
                      width: size.width / 3.5,
                      lineHeight: 8,
                      percent: 0.5,
                      backgroundColor: Colors.grey.shade400,
                      progressColor: Color(0xffff5a1e),
                    ),
                    Column(
                      children: [
                        Text('30',
                            style: GoogleFonts.montserrat(
                                color: Colors.black54, fontSize: 13)),
                        Text('%',
                            style: GoogleFonts.montserrat(
                                color: Colors.black54, fontSize: 13))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('Empty',
                            style: GoogleFonts.montserrat(
                                color: Colors.black54, fontSize: 13)),
                        Text('Table (7/10)',
                            style: GoogleFonts.montserrat(
                                color: Colors.black54, fontSize: 13))
                      ],
                    ),
                    LinearPercentIndicator(
                      width: size.width / 3.5,
                      lineHeight: 8,
                      percent: 0.5,
                      backgroundColor: Colors.grey.shade400,
                      progressColor: Colors.green.shade600,
                    ),
                    Column(
                      children: [
                        Text('30',
                            style: GoogleFonts.montserrat(
                                color: Colors.black54, fontSize: 13)),
                        Text('%',
                            style: GoogleFonts.montserrat(
                                color: Colors.black54, fontSize: 13))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Center(
            child: Text('Revenue',
                style: GoogleFonts.montserrat(
                    fontSize: 20, fontWeight: FontWeight.w500)),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Last Week',
                          style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54)),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.leaderboard, color: Colors.blue, size: 16),
                          SizedBox(
                            width: 10,
                          ),
                          Text('41,345k'.toString(),
                              style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.indigo)),
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Last Week',
                          style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54)),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.leaderboard,
                            color: Color(0xffff5a1e),
                            size: 16,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('51,345k'.toString(),
                              style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.indigo)),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 5, right: 5, top: 20),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.indeterminate_check_box, color: Colors.blue),
                    Text('Last Week',
                        style: GoogleFonts.montserrat(fontSize: 14)),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.indeterminate_check_box,
                        color: Color(0xffff5a1e)),
                    Text('This Week',
                        style: GoogleFonts.montserrat(fontSize: 14)),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 30, top: 30),
            height: 280,
            width: size.width / 1.5,
            child: SfCartesianChart(
                //   borderColor: Colors.transparent,
                tooltipBehavior: TooltipBehavior(enable: true),
                margin: EdgeInsets.zero,
                primaryXAxis: CategoryAxis(),
                series: <CartesianSeries>[
                  SplineAreaSeries<WeekData, String>(
                      color: Colors.blue.shade200,
                      borderColor: Colors.blue.shade800,
                      borderWidth: 5,
                      opacity: 0.5,
                      markerSettings: MarkerSettings(
                          isVisible: true, color: Colors.blue.shade800),
                      dataSource: [
                        WeekData('Mon', 35),
                        WeekData('Tue', 28),
                        WeekData('Wed', 34),
                        WeekData('Thr', 60),
                        WeekData('Fre', 40)
                      ],
                      xValueMapper: (WeekData money, _) => money.days,
                      yValueMapper: (WeekData money, _) => money.money),
                  SplineAreaSeries<WeekData, String>(
                      markerSettings: MarkerSettings(
                          isVisible: true, color: Colors.orange.shade800),
                      color: Colors.orange.shade200,
                      borderColor: Colors.orange.shade800,
                      opacity: 0.5,
                      borderWidth: 5,
                      dataSource: [
                        WeekData('Mon', 10),
                        WeekData('Tue', 40),
                        WeekData('Wed', 15),
                        WeekData('Thr', 30),
                        WeekData('Fre', 40)
                      ],
                      xValueMapper: (WeekData money, _) => money.days,
                      yValueMapper: (WeekData money, _) => money.money)
                ]),
          ),
          SizedBox(height: 40),
          Datatable()
        ]));
  }
}
