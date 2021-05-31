import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:smoose_20_05/responsive/pages/analytics/dailychart.dart';
import 'package:smoose_20_05/responsive/pages/analytics/dailytrending.dart';
import 'package:smoose_20_05/responsive/pages/analytics/mostselling/dailyselling.dart';
import 'package:smoose_20_05/responsive/responsive.dart';

class Analytics extends StatefulWidget {
  @override
  _AnalyticsState createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: MobileAnalytics(),
        tab: AnalticsTab(),
        maxViewDesktop: AnalyticsMax(),
        minViewDesktop: AnalyticsMax());
  }
}

class AnalyticsMax extends StatefulWidget {
  @override
  _AnalyticsMaxState createState() => _AnalyticsMaxState();
}

class _AnalyticsMaxState extends State<AnalyticsMax> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(30),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText('Analytics',
                        style: GoogleFonts.montserrat(
                            fontSize: 29,
                            fontWeight: FontWeight.w600,
                            textStyle: TextStyle(letterSpacing: 0.5))),
                    AutoSizeText(
                      'Here is your restaurant summary with graph view',
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
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText('Chart Orders',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  textStyle: TextStyle())),
                          AutoSizeText(
                            'vvvv',
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                textStyle: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                      HoverContainer(
                        //  height: 60,
                        width: size.width / 12,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(5)),
                        hoverDecoration: BoxDecoration(
                            color: Color(0xffff5a1e),
                            borderRadius: BorderRadius.circular(5)),
                        child: Container(
                            child: Center(
                          child: DropdownButton(
                            focusColor: Colors.white,
                            dropdownColor: Colors.white,
                            elevation: 0,
                            value: selectedvalue,
                            items: [
                              DropdownMenuItem(
                                child: Container(
                                  child: Text(
                                    'Daily',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            TextStyle(color: Colors.black)),
                                  ),
                                ),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  'Weekly',
                                  style: GoogleFonts.montserrat(
                                      textStyle:
                                          TextStyle(color: Colors.black)),
                                ),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  'Monthly',
                                  style: GoogleFonts.montserrat(
                                      textStyle:
                                          TextStyle(color: Colors.black)),
                                ),
                                value: 3,
                              ),
                            ],
                            onChanged: (dynamic value1) {
                              setState(() {
                                selectedvalue = value1;
                              });
                            },
                          ),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  DailyChart(),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText('Trending Items',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  textStyle: TextStyle(letterSpacing: 0.5))),
                          AutoSizeText(
                            'List of top 5 well moving foods',
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                textStyle: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                      HoverContainer(
                        height: 50,
                        width: size.width / 12,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(5)),
                        hoverDecoration: BoxDecoration(
                            color: Color(0xffff5a1e),
                            borderRadius: BorderRadius.circular(5)),
                        child: Container(
                            child: Center(
                          child: DropdownButton(
                            focusColor: Colors.white,
                            dropdownColor: Colors.white,
                            elevation: 0,
                            value: selectvalueTrending,
                            items: [
                              DropdownMenuItem(
                                child: Container(
                                  child: Text(
                                    'Daily',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            TextStyle(color: Colors.black)),
                                  ),
                                ),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  'Weekly',
                                  style: GoogleFonts.montserrat(
                                      textStyle:
                                          TextStyle(color: Colors.black)),
                                ),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  'Monthly',
                                  style: GoogleFonts.montserrat(
                                      textStyle:
                                          TextStyle(color: Colors.black)),
                                ),
                                value: 3,
                              ),
                            ],
                            onChanged: (dynamic value1) {
                              setState(() {
                                selectvalueTrending = value1;
                              });
                            },
                          ),
                        )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DailyTrending()
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText('Most Selling Items',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  textStyle: TextStyle(letterSpacing: 0.5))),
                          AutoSizeText(
                            'Have a look at your restaurants best selling foods',
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                textStyle: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 60,
                        width: size.width / 5,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectmostselling = 1;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: selectmostselling == 1
                                        ? Colors.white
                                        : Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(8)),
                                height: 40,
                                width: size.width / 17,
                                child: Center(
                                  child: Text(
                                    'Daily',
                                    style: TextStyle(
                                        color: selectmostselling == 1
                                            ? Colors.black
                                            : Colors.black54),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectmostselling = 2;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: selectmostselling == 2
                                        ? Colors.white
                                        : Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(8)),
                                height: 40,
                                width: size.width / 17,
                                child: Center(
                                  child: Text(
                                    'Weekly',
                                    style: TextStyle(
                                        color: selectmostselling == 2
                                            ? Colors.black
                                            : Colors.black54),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectmostselling = 3;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: selectmostselling == 3
                                        ? Colors.white
                                        : Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(8)),
                                height: 40,
                                width: size.width / 17,
                                child: Center(
                                  child: Text(
                                    'Monthly',
                                    style: TextStyle(
                                        color: selectmostselling == 3
                                            ? Colors.black
                                            : Colors.black54),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MostSellingDaily()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//

class AnalticsTab extends StatefulWidget {
  @override
  _AnalticsTabState createState() => _AnalticsTabState();
}

class _AnalticsTabState extends State<AnalticsTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Container(
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              size.width > 780
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText('Analytics',
                                style: GoogleFonts.montserrat(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    textStyle: TextStyle(letterSpacing: 0.5))),
                            AutoSizeText(
                              'Here is your restaurant summary with graph view',
                              style: GoogleFonts.montserrat(
                                  fontSize: 13,
                                  textStyle: TextStyle(color: Colors.grey)),
                              maxLines: 3,
                            ),
                          ],
                        ),
                        Datefiltercontainer()
                      ],
                    )
                  : Datefiltercontainer(),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText('Chart Orders',
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            textStyle: TextStyle())),
                    SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      'vvvv',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          textStyle: TextStyle(color: Colors.grey)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 60,
                        width: size.width / 8,
                        child: Center(
                          child: DropdownButton(
                            focusColor: Colors.white,
                            dropdownColor: Colors.white,
                            elevation: 0,
                            value: selectedvalue,
                            items: [
                              DropdownMenuItem(
                                child: Container(
                                  child: Text(
                                    'Daily',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            TextStyle(color: Colors.black)),
                                  ),
                                ),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  'Weekly',
                                  style: GoogleFonts.montserrat(
                                      textStyle:
                                          TextStyle(color: Colors.black)),
                                ),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  'Monthly',
                                  style: GoogleFonts.montserrat(
                                      textStyle:
                                          TextStyle(color: Colors.black)),
                                ),
                                value: 3,
                              ),
                            ],
                            onChanged: (dynamic value1) {
                              setState(() {
                                selectedvalue = value1;
                              });
                            },
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    DailyChart()
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText('Trending Items',
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            textStyle: TextStyle())),
                    SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      'List of top 5 well moving foods',
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          textStyle: TextStyle(color: Colors.grey)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 60,
                        width: size.width / 8,
                        child: Center(
                          child: DropdownButton(
                            focusColor: Colors.white,
                            dropdownColor: Colors.white,
                            elevation: 0,
                            value: selectvalueTrending,
                            items: [
                              DropdownMenuItem(
                                child: Container(
                                  child: Text(
                                    'Daily',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            TextStyle(color: Colors.black)),
                                  ),
                                ),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  'Weekly',
                                  style: GoogleFonts.montserrat(
                                      textStyle:
                                          TextStyle(color: Colors.black)),
                                ),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  'Monthly',
                                  style: GoogleFonts.montserrat(
                                      textStyle:
                                          TextStyle(color: Colors.black)),
                                ),
                                value: 3,
                              ),
                            ],
                            onChanged: (dynamic value1) {
                              setState(() {
                                selectvalueTrending = value1;
                              });
                            },
                          ),
                        )),
                    SizedBox(height: 20),
                    DailyTrendingTab()
                  ],
                ),
              ),
              Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText('Trending Items',
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                textStyle: TextStyle())),
                        SizedBox(
                          height: 10,
                        ),
                        AutoSizeText(
                          'List of top 5 well moving foods',
                          style: GoogleFonts.montserrat(
                              fontSize: 12,
                              textStyle: TextStyle(color: Colors.grey)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 60,
                              width: size.width / 3,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectmostselling = 1;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: selectmostselling == 1
                                              ? Colors.white
                                              : Colors.grey.shade100,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      height: 40,
                                      width: size.width / 10,
                                      child: Center(
                                        child: Text(
                                          'Daily',
                                          style: TextStyle(
                                              color: selectmostselling == 1
                                                  ? Colors.black
                                                  : Colors.black54),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectmostselling = 2;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: selectmostselling == 2
                                              ? Colors.white
                                              : Colors.grey.shade100,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      height: 40,
                                      width: size.width / 10,
                                      child: Center(
                                        child: Text(
                                          'Weekly',
                                          style: TextStyle(
                                              color: selectmostselling == 2
                                                  ? Colors.black
                                                  : Colors.black54),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectmostselling = 3;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: selectmostselling == 3
                                              ? Colors.white
                                              : Colors.grey.shade100,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      height: 40,
                                      width: size.width / 10,
                                      child: Center(
                                        child: Text(
                                          'Monthly',
                                          style: TextStyle(
                                              color: selectmostselling == 3
                                                  ? Colors.black
                                                  : Colors.black54),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container()
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Mostsellingtab()
                      ])),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}

class Datefiltercontainer extends StatelessWidget {
  const Datefiltercontainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoverContainer(
      height: 70,
      width: 260,
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(5)),
      hoverDecoration: BoxDecoration(
          color: Color(0xffff5a1e), borderRadius: BorderRadius.circular(5)),
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
    );
  }
}

class MobileAnalytics extends StatefulWidget {
  @override
  _MobileAnalyticsState createState() => _MobileAnalyticsState();
}

class _MobileAnalyticsState extends State<MobileAnalytics> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Container(
            child: ListView(padding: EdgeInsets.all(10), children: [
          SizedBox(
            height: 10,
          ),
          Datefiltercontainer(),
          SizedBox(
            height: 10,
          ),
          Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText('Chart Orders',
                        style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            textStyle: TextStyle())),
                    SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      'vvvv',
                      style: GoogleFonts.montserrat(
                          fontSize: 13,
                          textStyle: TextStyle(color: Colors.grey)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 60,
                        width: size.width / 3,
                        child: Center(
                          child: DropdownButton(
                            focusColor: Colors.white,
                            dropdownColor: Colors.white,
                            elevation: 0,
                            value: selectedvalue,
                            items: [
                              DropdownMenuItem(
                                child: Container(
                                  child: Text(
                                    'Daily',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            TextStyle(color: Colors.black)),
                                  ),
                                ),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  'Weekly',
                                  style: GoogleFonts.montserrat(
                                      textStyle:
                                          TextStyle(color: Colors.black)),
                                ),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  'Monthly',
                                  style: GoogleFonts.montserrat(
                                      textStyle:
                                          TextStyle(color: Colors.black)),
                                ),
                                value: 3,
                              ),
                            ],
                            onChanged: (dynamic value1) {
                              setState(() {
                                selectedvalue = value1;
                              });
                            },
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    DailyMobileChart()
                  ])),
          Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText('Trending Items',
                        style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            textStyle: TextStyle())),
                    SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      'List of top 5 well moving foods',
                      style: GoogleFonts.montserrat(
                          fontSize: 13,
                          textStyle: TextStyle(color: Colors.grey)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 60,
                        width: size.width / 3,
                        child: Center(
                          child: DropdownButton(
                            focusColor: Colors.white,
                            dropdownColor: Colors.white,
                            elevation: 0,
                            value: selectvalueTrending,
                            items: [
                              DropdownMenuItem(
                                child: Container(
                                  child: Text(
                                    'Daily',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            TextStyle(color: Colors.black)),
                                  ),
                                ),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  'Weekly',
                                  style: GoogleFonts.montserrat(
                                      textStyle:
                                          TextStyle(color: Colors.black)),
                                ),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  'Monthly',
                                  style: GoogleFonts.montserrat(
                                      textStyle:
                                          TextStyle(color: Colors.black)),
                                ),
                                value: 3,
                              ),
                            ],
                            onChanged: (dynamic value1) {
                              setState(() {
                                selectvalueTrending = value1;
                              });
                            },
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    DailyTrendingMobile()
                  ])),
          SizedBox(
            height: 20,
          ),
          Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText('Trending Items',
                        style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            textStyle: TextStyle())),
                    SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      'List of top 5 well moving foods',
                      style: GoogleFonts.montserrat(
                          fontSize: 13,
                          textStyle: TextStyle(color: Colors.grey)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 50,
                      width: size.width / 1.3,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectmostselling = 1;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: selectmostselling == 1
                                      ? Colors.white
                                      : Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(8)),
                              height: 40,
                              width: size.width / 5,
                              child: Center(
                                child: Text(
                                  'Daily',
                                  style: TextStyle(
                                      color: selectmostselling == 1
                                          ? Colors.black
                                          : Colors.black54),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectmostselling = 2;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: selectmostselling == 2
                                      ? Colors.white
                                      : Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(8)),
                              height: 40,
                              width: size.width / 5,
                              child: Center(
                                child: Text(
                                  'Weekly',
                                  style: TextStyle(
                                      color: selectmostselling == 2
                                          ? Colors.black
                                          : Colors.black54),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectmostselling = 3;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: selectmostselling == 3
                                      ? Colors.white
                                      : Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(8)),
                              height: 40,
                              width: size.width / 5,
                              child: Center(
                                child: Text(
                                  'Monthly',
                                  style: TextStyle(
                                      color: selectmostselling == 3
                                          ? Colors.black
                                          : Colors.black54),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MostSellingMobile()
                  ]))
        ])));
  }
}

var selectedvalue = 1;
var selectvalueTrending = 1;
var selectmostselling = 1;
