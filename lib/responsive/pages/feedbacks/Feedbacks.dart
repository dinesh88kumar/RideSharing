import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:smoose_20_05/responsive/pages/analytics/analytics.dart';
import 'package:smoose_20_05/responsive/responsive.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FeedBack extends StatefulWidget {
  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: MobileFeedback(),
        tab: TabFeedback(),
        maxViewDesktop: Feedbacks(),
        minViewDesktop: Feedbacks());
  }
}

class Feedbacks extends StatefulWidget {
  @override
  _FeedbacksState createState() => _FeedbacksState();
}

class _FeedbacksState extends State<Feedbacks> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Container(
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText('Reviews',
                            style: GoogleFonts.montserrat(
                                fontSize: 26,
                                fontWeight: FontWeight.w500,
                                textStyle: TextStyle())),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            AutoSizeText('Dashboard',
                                style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.indigo,
                                    textStyle: TextStyle())),
                            Text(' / '),
                            AutoSizeText('Customer reviews',
                                style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    textStyle: TextStyle())),
                          ],
                        )
                      ],
                    ),
                    Datefiltercontainer()
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: scrollController,
                    child: Row(
                      children: [
                        Reviewcontainer(),
                        SizedBox(
                          width: 20,
                        ),
                        Reviewcontainer(),
                        SizedBox(
                          width: 20,
                        ),
                        Reviewcontainer(),
                        SizedBox(
                          width: 20,
                        ),
                        Reviewcontainer(),
                        SizedBox(
                          width: 20,
                        ),
                        Reviewcontainer(),
                        SizedBox(
                          width: 20,
                        ),
                        Reviewcontainer(),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 150),
                    child: HoverContainer(
                      width: 80,
                      height: 50,
                      hoverWidth: 80,
                      hoverHeight: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      hoverDecoration: BoxDecoration(
                          color: Color(0xffff5a1e),
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            scrollController.animateTo(
                                scrollController.position.minScrollExtent,
                                duration: Duration(seconds: 6),
                                curve: Curves.easeInOut);
                          });
                        },
                        child: HoverWidget(
                          child: Center(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    scrollController.animateTo(
                                        scrollController
                                            .position.minScrollExtent,
                                        duration: Duration(seconds: 6),
                                        curve: Curves.easeInOut);
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Color(0xffff5a1e),
                                )),
                          ),
                          hoverChild: Center(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    scrollController.animateTo(
                                        scrollController
                                            .position.minScrollExtent,
                                        duration: Duration(seconds: 6),
                                        curve: Curves.easeInOut);
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                )),
                          ),
                          onHover: (event) {},
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        scrollController.animateTo(
                            scrollController.position.maxScrollExtent,
                            duration: Duration(seconds: 6),
                            curve: Curves.easeInOut);
                      });
                    },
                    child: Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(top: 150),
                      child: HoverContainer(
                        width: 80,
                        height: 50,
                        hoverWidth: 80,
                        hoverHeight: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        hoverDecoration: BoxDecoration(
                            color: Color(0xffff5a1e),
                            borderRadius: BorderRadius.circular(10)),
                        child: HoverWidget(
                          child: Center(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    scrollController.animateTo(
                                        scrollController
                                            .position.maxScrollExtent,
                                        duration: Duration(seconds: 6),
                                        curve: Curves.easeInOut);
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xffff5a1e),
                                )),
                          ),
                          hoverChild: Center(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    scrollController.animateTo(
                                        scrollController
                                            .position.maxScrollExtent,
                                        duration: Duration(seconds: 6),
                                        curve: Curves.easeInOut);
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )),
                          ),
                          onHover: (event) {},
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width / 1.7,
                    padding: EdgeInsets.all(20),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText('Recent Review',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              textStyle: TextStyle())),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      AutoSizeText(
                                          'Here is customer review about your restaurant',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 16,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              textStyle: TextStyle())),
                                    ],
                                  ),
                                  HoverContainer(
                                    height: 40,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.shade100,
                                    ),
                                    hoverDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xffff5a1e),
                                    ),
                                    child: HoverWidget(
                                        child: DropdownButton(
                                          elevation: 0,
                                          value: selectedvalue,
                                          items: [
                                            DropdownMenuItem(
                                              child: Container(
                                                child: Text(
                                                  'Latest',
                                                  style: GoogleFonts.montserrat(
                                                      textStyle: TextStyle(
                                                          color: Color(
                                                              0xffff5a1e))),
                                                ),
                                              ),
                                              value: 1,
                                            ),
                                            DropdownMenuItem(
                                              child: Text(
                                                'old',
                                                style: GoogleFonts.montserrat(
                                                    textStyle: TextStyle(
                                                        color:
                                                            Color(0xffff5a1e))),
                                              ),
                                              value: 2,
                                            ),
                                          ],
                                          onChanged: (dynamic value1) {
                                            setState(() {
                                              selectedvalue = value1;
                                            });
                                          },
                                        ),
                                        hoverChild: DropdownButton(
                                          value: selectedvalue,
                                          items: [
                                            DropdownMenuItem(
                                              child: Container(
                                                child: Text(
                                                  'Latest',
                                                  style: GoogleFonts.montserrat(
                                                      textStyle: TextStyle(
                                                          color: Colors.white)),
                                                ),
                                              ),
                                              value: 1,
                                            ),
                                            DropdownMenuItem(
                                              child: Text(
                                                'old',
                                                style: GoogleFonts.montserrat(
                                                    textStyle: TextStyle(
                                                        color: Colors.white)),
                                              ),
                                              value: 2,
                                            ),
                                          ],
                                          onChanged: (dynamic value1) {
                                            setState(() {
                                              selectedvalue = value1;
                                            });
                                          },
                                        ),
                                        onHover: (event) {}),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RecentReviewStack(size: size),
                        SizedBox(
                          height: 20,
                        ),
                        RecentReviewStack(size: size),
                        SizedBox(
                          height: 20,
                        ),
                        RecentReviewStack(size: size),
                        SizedBox(
                          height: 20,
                        ),
                        RecentReviewStack(size: size),
                        SizedBox(
                          height: 20,
                        ),
                        ExpansionTile(
                          title: HoverWidget(
                              child: Container(
                                child: Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    width: size.width / 10,
                                    height: 50,
                                    child: Center(
                                      child: AutoSizeText('Read More',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.grey.shade600,
                                              textStyle: TextStyle())),
                                    ),
                                  ),
                                ),
                              ),
                              hoverChild: Container(
                                child: Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffff5a1e),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    width: size.width / 10,
                                    height: 50,
                                    child: Center(
                                      child: AutoSizeText('Read More',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                              textStyle: TextStyle())),
                                    ),
                                  ),
                                ),
                              ),
                              onHover: (event) {}),
                          children: [
                            RecentReviewStack(size: size),
                            SizedBox(
                              height: 20,
                            ),
                            RecentReviewStack(size: size),
                            SizedBox(
                              height: 20,
                            ),
                            RecentReviewStack(size: size),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Container(
                      width: size.width / 6,
                      height: 600,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade800),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                top: 40, bottom: 40, left: size.width / 50),
                            child: Row(
                              children: [
                                AutoSizeText('Newest',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        textStyle: TextStyle())),
                                SizedBox(
                                  width: size.width / 60,
                                ),
                                HoverWidget(
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.grey.shade400,
                                    ),
                                    hoverChild: Icon(Icons.arrow_back_ios,
                                        color: Colors.white),
                                    onHover: (event) {}),
                                HoverWidget(
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.grey.shade400,
                                    ),
                                    hoverChild: Icon(Icons.arrow_forward_ios,
                                        color: Colors.white),
                                    onHover: (event) {})
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.only(left: size.width / 70),
                                  child: AutoSizeText('Customer ID:001',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          textStyle: TextStyle())),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: size.width / 70,
                                      right: size.width / 80,
                                      top: 20),
                                  child: AutoSizeText(
                                    'This was not just great cooking but exceptional cooking using only the best ingredients',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white,
                                        textStyle: TextStyle()),
                                    maxLines: 4,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: size.width / 70,
                                      right: size.width / 80,
                                      top: 20),
                                  child: AutoSizeText(
                                    'Fast,professional and friendly service,we ordered the six course tasting menu and every dish was spectacular',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white,
                                        textStyle: TextStyle()),
                                    maxLines: 4,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: size.width / 70,
                                      right: size.width / 80,
                                      top: 20),
                                  child: Column(
                                    children: [
                                      HoverWidget(
                                          child: Container(
                                            width: size.width / 15,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Center(
                                              child: AutoSizeText('Excellent',
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Colors.grey.shade600,
                                                      textStyle: TextStyle())),
                                            ),
                                          ),
                                          hoverChild: Container(),
                                          onHover: (event) {}),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      HoverWidget(
                                          child: Container(
                                            width: size.width / 15,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Center(
                                              child: AutoSizeText('Excellent',
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Colors.grey.shade600,
                                                      textStyle: TextStyle())),
                                            ),
                                          ),
                                          hoverChild: Container(),
                                          onHover: (event) {}),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      HoverWidget(
                                          child: Container(
                                            width: size.width / 15,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Center(
                                              child: AutoSizeText('Excellent',
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Colors.grey.shade600,
                                                      textStyle: TextStyle())),
                                            ),
                                          ),
                                          hoverChild: Container(),
                                          onHover: (event) {}),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      HoverWidget(
                                          child: Container(
                                            width: size.width / 15,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Center(
                                              child: AutoSizeText('Excellent',
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Colors.grey.shade600,
                                                      textStyle: TextStyle())),
                                            ),
                                          ),
                                          hoverChild: Container(),
                                          onHover: (event) {}),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: size.width / 6,
                                  height: 75,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      color: Color(0xffff5a1e),
                                      borderRadius: BorderRadius.circular(
                                          size.width / 80)),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        AutoSizeText('4.0',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                                textStyle: TextStyle())),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                        ),
                                        Icon(
                                          Icons.star_border,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RecentReviewStack extends StatelessWidget {
  const RecentReviewStack({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      AutoSizeText('Customer ID:001',
          style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              textStyle: TextStyle())),
      Container(
        padding: EdgeInsets.only(right: size.width / 15),
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: 90,
            height: 25,
            decoration: BoxDecoration(
                color: Colors.red.shade200,
                borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: AutoSizeText('Excellent',
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                      textStyle: TextStyle())),
            ),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 20, right: size.width / 30),
        child: Align(
          alignment: Alignment.centerRight,
          child: AutoSizeText('4.0',
              style: GoogleFonts.montserrat(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  textStyle: TextStyle())),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 50, right: size.width / 10),
        child: AutoSizeText(
          'We recently had dinner with friends at David CC and we all walked away with a great experience. Good food, pleasant environment, personal attention through all the evening. Thanks to the team and we will be back!',
          style: GoogleFonts.montserrat(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              textStyle: TextStyle()),
          maxLines: 3,
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 70, left: size.width / 2.25),
        child: Align(
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star_border,
                color: Colors.amber,
              )
            ],
          ),
        ),
      ),
    ]);
  }
}

class Reviewcontainer extends StatelessWidget {
  const Reviewcontainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      height: 320,
      width: 330,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://lh3.googleusercontent.com/fsYoIEccNZN9-XtB2FGM0tuou7HK1Eu_d3wpRYglUE4wEWxw6hRuG1vrL4i_6t85TyDrKAO7-Mfy5R1mq8XTOg=s1200-e365',
                  fit: BoxFit.cover,
                  height: 80,
                  width: 70,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Tuna soup spinach with',
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          textStyle: TextStyle())),
                  AutoSizeText('himalaya salt',
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          textStyle: TextStyle())),
                  SizedBox(
                    height: 10,
                  ),
                  AutoSizeText('MAIN COURSE',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffff5a1e),
                          textStyle: TextStyle())),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          AutoSizeText(
            'A very fine addition to not over plentiful supply of good restaurants in this part of west London',
            style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                textStyle: TextStyle()),
            maxLines: 4,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 70,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.indigo),
            padding: EdgeInsets.all(20),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText('Customer ID:001',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          textStyle: TextStyle())),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 22,
                      ),
                      AutoSizeText('4.1',
                          style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              textStyle: TextStyle())),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

ScrollController scrollController = ScrollController();
var selectedvalue = 1;

class TabFeedback extends StatefulWidget {
  @override
  _TabFeedbackState createState() => _TabFeedbackState();
}

class _TabFeedbackState extends State<TabFeedback> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Container(
          child: ListView(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Container(
                      padding: EdgeInsets.only(right: size.width / 10),
                      child: Datefiltercontainer())),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: scrollController,
                    child: Row(
                      children: [
                        Reviewcontainer(),
                        SizedBox(
                          width: 20,
                        ),
                        Reviewcontainer(),
                        SizedBox(
                          width: 20,
                        ),
                        Reviewcontainer(),
                        SizedBox(
                          width: 20,
                        ),
                        Reviewcontainer(),
                        SizedBox(
                          width: 20,
                        ),
                        Reviewcontainer(),
                        SizedBox(
                          width: 20,
                        ),
                        Reviewcontainer(),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 150),
                    child: HoverContainer(
                      width: 80,
                      height: 50,
                      hoverWidth: 80,
                      hoverHeight: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      hoverDecoration: BoxDecoration(
                          color: Color(0xffff5a1e),
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            scrollController.animateTo(
                                scrollController.position.minScrollExtent,
                                duration: Duration(seconds: 6),
                                curve: Curves.easeInOut);
                          });
                        },
                        child: HoverWidget(
                          child: Center(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    scrollController.animateTo(
                                        scrollController
                                            .position.minScrollExtent,
                                        duration: Duration(seconds: 6),
                                        curve: Curves.easeInOut);
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Color(0xffff5a1e),
                                )),
                          ),
                          hoverChild: Center(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    scrollController.animateTo(
                                        scrollController
                                            .position.minScrollExtent,
                                        duration: Duration(seconds: 6),
                                        curve: Curves.easeInOut);
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                )),
                          ),
                          onHover: (event) {},
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        scrollController.animateTo(
                            scrollController.position.maxScrollExtent,
                            duration: Duration(seconds: 6),
                            curve: Curves.easeInOut);
                      });
                    },
                    child: Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(top: 150),
                      child: HoverContainer(
                        width: 80,
                        height: 50,
                        hoverWidth: 80,
                        hoverHeight: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        hoverDecoration: BoxDecoration(
                            color: Color(0xffff5a1e),
                            borderRadius: BorderRadius.circular(10)),
                        child: HoverWidget(
                          child: Center(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    scrollController.animateTo(
                                        scrollController
                                            .position.maxScrollExtent,
                                        duration: Duration(seconds: 6),
                                        curve: Curves.easeInOut);
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xffff5a1e),
                                )),
                          ),
                          hoverChild: Center(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    scrollController.animateTo(
                                        scrollController
                                            .position.maxScrollExtent,
                                        duration: Duration(seconds: 6),
                                        curve: Curves.easeInOut);
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )),
                          ),
                          onHover: (event) {},
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width / 1,
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText('Recent Review',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              textStyle: TextStyle())),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      AutoSizeText(
                                          'Here is customer review about your restaurant',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 16,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              textStyle: TextStyle())),
                                    ],
                                  ),
                                  HoverContainer(
                                    height: 40,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.shade100,
                                    ),
                                    hoverDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xffff5a1e),
                                    ),
                                    child: HoverWidget(
                                        child: DropdownButton(
                                          elevation: 0,
                                          value: selectedvalue,
                                          items: [
                                            DropdownMenuItem(
                                              child: Container(
                                                child: Text(
                                                  'Latest',
                                                  style: GoogleFonts.montserrat(
                                                      textStyle: TextStyle(
                                                          color: Color(
                                                              0xffff5a1e))),
                                                ),
                                              ),
                                              value: 1,
                                            ),
                                            DropdownMenuItem(
                                              child: Text(
                                                'old',
                                                style: GoogleFonts.montserrat(
                                                    textStyle: TextStyle(
                                                        color:
                                                            Color(0xffff5a1e))),
                                              ),
                                              value: 2,
                                            ),
                                          ],
                                          onChanged: (dynamic value1) {
                                            setState(() {
                                              selectedvalue = value1;
                                            });
                                          },
                                        ),
                                        hoverChild: DropdownButton(
                                          value: selectedvalue,
                                          items: [
                                            DropdownMenuItem(
                                              child: Container(
                                                child: Text(
                                                  'Latest',
                                                  style: GoogleFonts.montserrat(
                                                      textStyle: TextStyle(
                                                          color: Colors.white)),
                                                ),
                                              ),
                                              value: 1,
                                            ),
                                            DropdownMenuItem(
                                              child: Text(
                                                'old',
                                                style: GoogleFonts.montserrat(
                                                    textStyle: TextStyle(
                                                        color: Colors.white)),
                                              ),
                                              value: 2,
                                            ),
                                          ],
                                          onChanged: (dynamic value1) {
                                            setState(() {
                                              selectedvalue = value1;
                                            });
                                          },
                                        ),
                                        onHover: (event) {}),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RecentReviewTab(),
                        SizedBox(
                          height: 20,
                        ),
                        RecentReviewTab(),
                        SizedBox(
                          height: 20,
                        ),
                        RecentReviewTab(),
                        SizedBox(
                          height: 20,
                        ),
                        RecentReviewTab(),
                        SizedBox(
                          height: 20,
                        ),
                        ExpansionTile(
                          title: HoverWidget(
                              child: Container(
                                child: Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    width: size.width / 10,
                                    height: 50,
                                    child: Center(
                                      child: AutoSizeText('Read More',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.grey.shade600,
                                              textStyle: TextStyle())),
                                    ),
                                  ),
                                ),
                              ),
                              hoverChild: Container(
                                child: Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffff5a1e),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    width: size.width / 10,
                                    height: 50,
                                    child: Center(
                                      child: AutoSizeText('Read More',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                              textStyle: TextStyle())),
                                    ),
                                  ),
                                ),
                              ),
                              onHover: (event) {}),
                          children: [
                            RecentReviewTab(),
                            SizedBox(
                              height: 20,
                            ),
                            RecentReviewTab(),
                            SizedBox(
                              height: 20,
                            ),
                            RecentReviewTab(),
                            SizedBox(
                              height: 20,
                            ),
                            RecentReviewTab(),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: size.width / 1,
                      height: 600,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade800),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                top: 40, bottom: 40, left: size.width / 50),
                            child: Row(
                              children: [
                                AutoSizeText('Newest',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        textStyle: TextStyle())),
                                SizedBox(
                                  width: size.width / 60,
                                ),
                                HoverWidget(
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.grey.shade400,
                                    ),
                                    hoverChild: Icon(Icons.arrow_back_ios,
                                        color: Colors.white),
                                    onHover: (event) {}),
                                HoverWidget(
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.grey.shade400,
                                    ),
                                    hoverChild: Icon(Icons.arrow_forward_ios,
                                        color: Colors.white),
                                    onHover: (event) {})
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.only(left: size.width / 70),
                                  child: AutoSizeText('Customer ID:001',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          textStyle: TextStyle())),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: size.width / 70,
                                      right: size.width / 80,
                                      top: 20),
                                  child: AutoSizeText(
                                    'This was not just great cooking but exceptional cooking using only the best ingredients',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white,
                                        textStyle: TextStyle()),
                                    maxLines: 4,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: size.width / 70,
                                      right: size.width / 80,
                                      top: 20),
                                  child: AutoSizeText(
                                    'Fast,professional and friendly service,we ordered the six course tasting menu and every dish was spectacular',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white,
                                        textStyle: TextStyle()),
                                    maxLines: 4,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: size.width / 70,
                                      right: size.width / 80,
                                      top: 120),
                                  child: Column(
                                    children: [
                                      HoverWidget(
                                          child: Container(
                                            width: size.width / 8,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Center(
                                              child: AutoSizeText('Excellent',
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Colors.grey.shade600,
                                                      textStyle: TextStyle())),
                                            ),
                                          ),
                                          hoverChild: Container(),
                                          onHover: (event) {}),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      HoverWidget(
                                          child: Container(
                                            width: size.width / 8,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Center(
                                              child: AutoSizeText('Excellent',
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Colors.grey.shade600,
                                                      textStyle: TextStyle())),
                                            ),
                                          ),
                                          hoverChild: Container(),
                                          onHover: (event) {}),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      HoverWidget(
                                          child: Container(
                                            width: size.width / 8,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Center(
                                              child: AutoSizeText('Excellent',
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Colors.grey.shade600,
                                                      textStyle: TextStyle())),
                                            ),
                                          ),
                                          hoverChild: Container(),
                                          onHover: (event) {}),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      HoverWidget(
                                          child: Container(
                                            width: size.width / 8,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Center(
                                              child: AutoSizeText('Excellent',
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Colors.grey.shade600,
                                                      textStyle: TextStyle())),
                                            ),
                                          ),
                                          hoverChild: Container(),
                                          onHover: (event) {}),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: size.width / 1,
                                  height: 75,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      color: Color(0xffff5a1e),
                                      borderRadius: BorderRadius.circular(
                                          size.width / 80)),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        AutoSizeText('4.0',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                                textStyle: TextStyle())),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                        ),
                                        Icon(
                                          Icons.star_border,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RecentReviewTab extends StatefulWidget {
  @override
  _RecentReviewTabState createState() => _RecentReviewTabState();
}

class _RecentReviewTabState extends State<RecentReviewTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      AutoSizeText('Customer ID:001',
          style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              textStyle: TextStyle())),
      Container(
        padding: EdgeInsets.only(right: size.width / 15),
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: 90,
            height: 25,
            decoration: BoxDecoration(
                color: Colors.red.shade200,
                borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: AutoSizeText('Excellent',
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                      textStyle: TextStyle())),
            ),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 30, right: size.width / 15),
        child: Align(
          alignment: Alignment.centerRight,
          child: AutoSizeText('4.0',
              style: GoogleFonts.montserrat(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  textStyle: TextStyle())),
        ),
      ),
      Container(
        width: size.width / 1.5,
        padding: EdgeInsets.only(top: 50, right: size.width / 10),
        child: AutoSizeText(
          'We recently had dinner with friends at David CC and we all walked away with a great experience. Good food, pleasant environment, personal attention through all the evening. Thanks to the team and we will be back!',
          style: GoogleFonts.montserrat(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              textStyle: TextStyle()),
          maxLines: 3,
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 70, left: size.width / 1.65),
        child: Align(
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 18,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 18,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 18,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 18,
              ),
              Icon(
                Icons.star_border,
                color: Colors.amber,
                size: 18,
              )
            ],
          ),
        ),
      ),
    ]);
  }
}

class MobileFeedback extends StatefulWidget {
  @override
  _MobileFeedbackState createState() => _MobileFeedbackState();
}

class _MobileFeedbackState extends State<MobileFeedback> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        padding: EdgeInsets.all(10),
        child: Container(
          child: ListView(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Container(
                      padding: EdgeInsets.only(right: size.width / 10),
                      child: Datefiltercontainer())),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: scrollController,
                    child: Row(
                      children: [
                        ReviewContainerMobile(),
                        SizedBox(
                          width: 20,
                        ),
                        ReviewContainerMobile(),
                        SizedBox(
                          width: 20,
                        ),
                        ReviewContainerMobile(),
                        SizedBox(
                          width: 20,
                        ),
                        ReviewContainerMobile(),
                        SizedBox(
                          width: 20,
                        ),
                        ReviewContainerMobile(),
                        SizedBox(
                          width: 20,
                        ),
                        ReviewContainerMobile(),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 170),
                    child: HoverContainer(
                      width: 40,
                      height: 30,
                      hoverWidth: 40,
                      hoverHeight: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      hoverDecoration: BoxDecoration(
                          color: Color(0xffff5a1e),
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            scrollController.animateTo(
                                scrollController.position.minScrollExtent,
                                duration: Duration(seconds: 6),
                                curve: Curves.easeInOut);
                          });
                        },
                        child: HoverWidget(
                          child: Center(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    scrollController.animateTo(
                                        scrollController
                                            .position.minScrollExtent,
                                        duration: Duration(seconds: 6),
                                        curve: Curves.easeInOut);
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Color(0xffff5a1e),
                                )),
                          ),
                          hoverChild: Center(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    scrollController.animateTo(
                                        scrollController
                                            .position.minScrollExtent,
                                        duration: Duration(seconds: 6),
                                        curve: Curves.easeInOut);
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                )),
                          ),
                          onHover: (event) {},
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        scrollController.animateTo(
                            scrollController.position.maxScrollExtent,
                            duration: Duration(seconds: 6),
                            curve: Curves.easeInOut);
                      });
                    },
                    child: Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(top: 170),
                      child: HoverContainer(
                        width: 40,
                        height: 30,
                        hoverWidth: 40,
                        hoverHeight: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        hoverDecoration: BoxDecoration(
                            color: Color(0xffff5a1e),
                            borderRadius: BorderRadius.circular(10)),
                        child: HoverWidget(
                          child: Center(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    scrollController.animateTo(
                                        scrollController
                                            .position.maxScrollExtent,
                                        duration: Duration(seconds: 6),
                                        curve: Curves.easeInOut);
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xffff5a1e),
                                )),
                          ),
                          hoverChild: Center(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    scrollController.animateTo(
                                        scrollController
                                            .position.maxScrollExtent,
                                        duration: Duration(seconds: 6),
                                        curve: Curves.easeInOut);
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )),
                          ),
                          onHover: (event) {},
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width / 1,
                    padding: EdgeInsets.only(
                        top: 20, bottom: 20, left: 10, right: 10),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText('Recent Review',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              textStyle: TextStyle())),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      AutoSizeText(
                                          'Here is customer review about your restaurant',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 16,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              textStyle: TextStyle())),
                                    ],
                                  ),
                                  HoverContainer(
                                    height: 40,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.shade100,
                                    ),
                                    hoverDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xffff5a1e),
                                    ),
                                    child: HoverWidget(
                                        child: DropdownButton(
                                          elevation: 0,
                                          value: selectedvalue,
                                          items: [
                                            DropdownMenuItem(
                                              child: Container(
                                                child: Text(
                                                  'Latest',
                                                  style: GoogleFonts.montserrat(
                                                      textStyle: TextStyle(
                                                          color: Color(
                                                              0xffff5a1e))),
                                                ),
                                              ),
                                              value: 1,
                                            ),
                                            DropdownMenuItem(
                                              child: Text(
                                                'old',
                                                style: GoogleFonts.montserrat(
                                                    textStyle: TextStyle(
                                                        color:
                                                            Color(0xffff5a1e))),
                                              ),
                                              value: 2,
                                            ),
                                          ],
                                          onChanged: (dynamic value1) {
                                            setState(() {
                                              selectedvalue = value1;
                                            });
                                          },
                                        ),
                                        hoverChild: DropdownButton(
                                          value: selectedvalue,
                                          items: [
                                            DropdownMenuItem(
                                              child: Container(
                                                child: Text(
                                                  'Latest',
                                                  style: GoogleFonts.montserrat(
                                                      textStyle: TextStyle(
                                                          color: Colors.white)),
                                                ),
                                              ),
                                              value: 1,
                                            ),
                                            DropdownMenuItem(
                                              child: Text(
                                                'old',
                                                style: GoogleFonts.montserrat(
                                                    textStyle: TextStyle(
                                                        color: Colors.white)),
                                              ),
                                              value: 2,
                                            ),
                                          ],
                                          onChanged: (dynamic value1) {
                                            setState(() {
                                              selectedvalue = value1;
                                            });
                                          },
                                        ),
                                        onHover: (event) {}),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RecentReviewMobile(),
                        SizedBox(
                          height: 20,
                        ),
                        RecentReviewMobile(),
                        SizedBox(
                          height: 20,
                        ),
                        RecentReviewMobile(),
                        SizedBox(
                          height: 20,
                        ),
                        RecentReviewMobile(),
                        SizedBox(
                          height: 20,
                        ),
                        ExpansionTile(
                          title: HoverWidget(
                              child: Container(
                                child: Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    width: size.width / 3,
                                    height: 50,
                                    child: Center(
                                      child: AutoSizeText('Read More',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.grey.shade600,
                                              textStyle: TextStyle())),
                                    ),
                                  ),
                                ),
                              ),
                              hoverChild: Container(
                                child: Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffff5a1e),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    width: size.width / 3,
                                    height: 50,
                                    child: Center(
                                      child: AutoSizeText('Read More',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                              textStyle: TextStyle())),
                                    ),
                                  ),
                                ),
                              ),
                              onHover: (event) {}),
                          children: [],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: size.width / 1,
                      height: 600,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade800),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                top: 40, bottom: 40, left: size.width / 50),
                            child: Row(
                              children: [
                                AutoSizeText('Newest',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        textStyle: TextStyle())),
                                SizedBox(
                                  width: size.width / 60,
                                ),
                                HoverWidget(
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.grey.shade400,
                                    ),
                                    hoverChild: Icon(Icons.arrow_back_ios,
                                        color: Colors.white),
                                    onHover: (event) {}),
                                HoverWidget(
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.grey.shade400,
                                    ),
                                    hoverChild: Icon(Icons.arrow_forward_ios,
                                        color: Colors.white),
                                    onHover: (event) {})
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.only(left: size.width / 70),
                                  child: AutoSizeText('Customer ID:001',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          textStyle: TextStyle())),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: size.width / 70,
                                      right: size.width / 80,
                                      top: 20),
                                  child: AutoSizeText(
                                    'This was not just great cooking but exceptional cooking using only the best ingredients',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white,
                                        textStyle: TextStyle()),
                                    maxLines: 4,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: size.width / 70,
                                      right: size.width / 80,
                                      top: 20),
                                  child: AutoSizeText(
                                    'Fast,professional and friendly service,we ordered the six course tasting menu and every dish was spectacular',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white,
                                        textStyle: TextStyle()),
                                    maxLines: 4,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: size.width / 70,
                                      right: size.width / 80,
                                      top: 20),
                                  child: Column(
                                    children: [
                                      HoverWidget(
                                          child: Container(
                                            width: size.width / 4,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Center(
                                              child: AutoSizeText('Excellent',
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 8,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Colors.grey.shade600,
                                                      textStyle: TextStyle())),
                                            ),
                                          ),
                                          hoverChild: Container(),
                                          onHover: (event) {}),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      HoverWidget(
                                          child: Container(
                                            width: size.width / 4,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Center(
                                              child: AutoSizeText('Excellent',
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 8,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Colors.grey.shade600,
                                                      textStyle: TextStyle())),
                                            ),
                                          ),
                                          hoverChild: Container(),
                                          onHover: (event) {}),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      HoverWidget(
                                          child: Container(
                                            width: size.width / 4,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Center(
                                              child: AutoSizeText('Excellent',
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 8,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Colors.grey.shade600,
                                                      textStyle: TextStyle())),
                                            ),
                                          ),
                                          hoverChild: Container(),
                                          onHover: (event) {}),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      HoverWidget(
                                          child: Container(
                                            width: size.width / 4,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Center(
                                              child: AutoSizeText('Excellent',
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 8,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Colors.grey.shade600,
                                                      textStyle: TextStyle())),
                                            ),
                                          ),
                                          hoverChild: Container(),
                                          onHover: (event) {}),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: size.width / 1,
                                  height: 75,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      color: Color(0xffff5a1e),
                                      borderRadius: BorderRadius.circular(
                                          size.width / 80)),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        AutoSizeText('4.0',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                                textStyle: TextStyle())),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                        ),
                                        Icon(
                                          Icons.star_border,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RecentReviewMobile extends StatefulWidget {
  @override
  _RecentReviewMobileState createState() => _RecentReviewMobileState();
}

class _RecentReviewMobileState extends State<RecentReviewMobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      AutoSizeText('Customer ID:001',
          style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              textStyle: TextStyle())),
      Container(
        padding: EdgeInsets.only(right: size.width / 15),
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: 60,
            height: 25,
            decoration: BoxDecoration(
                color: Colors.red.shade200,
                borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: AutoSizeText('Excellent',
                  style: GoogleFonts.montserrat(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                      textStyle: TextStyle())),
            ),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 30, right: size.width / 15),
        child: Align(
          alignment: Alignment.centerRight,
          child: AutoSizeText('4.0',
              style: GoogleFonts.montserrat(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  textStyle: TextStyle())),
        ),
      ),
      Container(
        width: size.width / 1.5,
        padding: EdgeInsets.only(top: 50, right: size.width / 10),
        child: AutoSizeText(
          'We recently had dinner with friends at David CC and we all walked away with a great experience. Good food, pleasant environment, personal attention through all the evening. Thanks to the team and we will be back!',
          style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              textStyle: TextStyle()),
          maxLines: 10,
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 70, left: size.width / 1.75),
        child: Align(
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 16,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 16,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 16,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 16,
              ),
              Icon(
                Icons.star_border,
                color: Colors.amber,
                size: 16,
              )
            ],
          ),
        ),
      ),
    ]);
  }
}

class ReviewContainerMobile extends StatefulWidget {
  @override
  _ReviewContainerMobileState createState() => _ReviewContainerMobileState();
}

class _ReviewContainerMobileState extends State<ReviewContainerMobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      height: 350,
      width: 330,
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://lh3.googleusercontent.com/fsYoIEccNZN9-XtB2FGM0tuou7HK1Eu_d3wpRYglUE4wEWxw6hRuG1vrL4i_6t85TyDrKAO7-Mfy5R1mq8XTOg=s1200-e365',
                  fit: BoxFit.cover,
                  height: 80,
                  width: 70,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Tuna soup spinach with',
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          textStyle: TextStyle())),
                  AutoSizeText('himalaya salt',
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          textStyle: TextStyle())),
                  SizedBox(
                    height: 10,
                  ),
                  AutoSizeText('MAIN COURSE',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffff5a1e),
                          textStyle: TextStyle())),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          AutoSizeText(
            'A very fine addition to not over plentiful supply of good restaurants in this part of west London',
            style: GoogleFonts.montserrat(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                textStyle: TextStyle()),
            maxLines: 5,
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 70,
            width: size.width / 1.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.indigo),
            padding: EdgeInsets.only(top: 16, bottom: 16, right: 10, left: 10),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText('Customer ID:001',
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          textStyle: TextStyle())),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 22,
                      ),
                      AutoSizeText('4.1',
                          style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              textStyle: TextStyle())),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
