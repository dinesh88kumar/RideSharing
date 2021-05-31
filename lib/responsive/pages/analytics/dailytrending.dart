import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DailyTrending extends StatefulWidget {
  @override
  _DailyTrendingState createState() => _DailyTrendingState();
}

class _DailyTrendingState extends State<DailyTrending> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row1(),
          SizedBox(
            height: 20,
          ),
          Row1(),
          SizedBox(
            height: 20,
          ),
          Row1(),
          SizedBox(
            height: 20,
          ),
          Row1(),
          SizedBox(
            height: 20,
          ),
          Row1()
        ],
      ),
    );
  }
}

class Row1 extends StatefulWidget {
  @override
  _Row1State createState() => _Row1State();
}

class _Row1State extends State<Row1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            '#1',
            style: GoogleFonts.montserrat(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.black54),
          ),
        ),
        SizedBox(
          width: size.width / 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://lh3.googleusercontent.com/fsYoIEccNZN9-XtB2FGM0tuou7HK1Eu_d3wpRYglUE4wEWxw6hRuG1vrL4i_6t85TyDrKAO7-Mfy5R1mq8XTOg=s1200-e365',
            fit: BoxFit.cover,
            height: 100,
            width: 90,
          ),
        ),
        SizedBox(
          width: size.width / 60,
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText('Tuna soup spinach with himalaya salt',
                  style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      textStyle: TextStyle())),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  AutoSizeText('12.56',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          textStyle: TextStyle())),
                  SizedBox(
                    width: size.width / 60,
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
        ),
        SizedBox(
          width: size.width / 8,
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Row(
            children: [
              Container(
                  height: 50,
                  width: 40,
                  child: Image.asset(
                    'images/up.png',
                  )),
              SizedBox(
                width: size.width / 60,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('524',
                      style: GoogleFonts.montserrat(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          textStyle: TextStyle())),
                  AutoSizeText('sales 12%',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                          textStyle: TextStyle())),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

//
class DailyTrendingTab extends StatefulWidget {
  @override
  _DailyTrendingTabState createState() => _DailyTrendingTabState();
}

class _DailyTrendingTabState extends State<DailyTrendingTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20, right: 10),
      child: Column(
        children: [
          TabRow(),
          SizedBox(
            height: 20,
          ),
          TabRow(),
          SizedBox(
            height: 20,
          ),
          TabRow(),
          SizedBox(
            height: 20,
          ),
          TabRow(),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

//
class TabRow extends StatefulWidget {
  @override
  _TabRowState createState() => _TabRowState();
}

class _TabRowState extends State<TabRow> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            '#1',
            style: GoogleFonts.montserrat(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black54),
          ),
        ),
        SizedBox(
          width: size.width / 80,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://lh3.googleusercontent.com/fsYoIEccNZN9-XtB2FGM0tuou7HK1Eu_d3wpRYglUE4wEWxw6hRuG1vrL4i_6t85TyDrKAO7-Mfy5R1mq8XTOg=s1200-e365',
            fit: BoxFit.cover,
            height: 90,
            width: 75,
          ),
        ),
        SizedBox(
          width: size.width / 60,
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText('Tuna soup spinach with himalaya salt',
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      textStyle: TextStyle())),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  AutoSizeText('12.56',
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          textStyle: TextStyle())),
                  SizedBox(
                    width: size.width / 60,
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
        ),
        SizedBox(
          width: size.width > 850 ? size.width / 8 : size.width / 30,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText('524',
                style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    textStyle: TextStyle())),
            AutoSizeText('sales 12%',
                style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    textStyle: TextStyle())),
          ],
        )
      ],
    );
  }
}

class DailyTrendingMobile extends StatefulWidget {
  @override
  _DailyTrendingMobileState createState() => _DailyTrendingMobileState();
}

class _DailyTrendingMobileState extends State<DailyTrendingMobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          DailyTrendingMobileRow(),
          SizedBox(
            height: 20,
          ),
          DailyTrendingMobileRow(),
          SizedBox(
            height: 20,
          ),
          DailyTrendingMobileRow(),
          SizedBox(
            height: 20,
          ),
          DailyTrendingMobileRow(),
        ],
      ),
    );
  }
}

class DailyTrendingMobileRow extends StatefulWidget {
  @override
  _DailyTrendingMobileRowState createState() => _DailyTrendingMobileRowState();
}

class _DailyTrendingMobileRowState extends State<DailyTrendingMobileRow> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            'https://lh3.googleusercontent.com/fsYoIEccNZN9-XtB2FGM0tuou7HK1Eu_d3wpRYglUE4wEWxw6hRuG1vrL4i_6t85TyDrKAO7-Mfy5R1mq8XTOg=s1200-e365',
            fit: BoxFit.cover,
            height: 50,
            width: 40,
          ),
        ),
        SizedBox(
          width: size.width > 400 ? size.width / 30 : size.width / 50,
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                'Tuna soup spinach with ',
                style: GoogleFonts.montserrat(
                    fontSize: size.width > 400 ? 14 : 12,
                    fontWeight: FontWeight.w400,
                    textStyle: TextStyle()),
              ),
              AutoSizeText(
                'himalaya salt',
                style: GoogleFonts.montserrat(
                    fontSize: size.width > 400 ? 14 : 12,
                    fontWeight: FontWeight.w400,
                    textStyle: TextStyle()),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  AutoSizeText('12.56',
                      style: GoogleFonts.montserrat(
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                          textStyle: TextStyle())),
                  SizedBox(
                    width: size.width / 60,
                  ),
                  AutoSizeText('MAIN COURSE',
                      style: GoogleFonts.montserrat(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffff5a1e),
                          textStyle: TextStyle())),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width > 400 ? size.width / 5 : size.width / 50,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText('524',
                style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    textStyle: TextStyle())),
            AutoSizeText('sales',
                style: GoogleFonts.montserrat(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    textStyle: TextStyle())),
            AutoSizeText('(12%)',
                style: GoogleFonts.montserrat(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    textStyle: TextStyle())),
          ],
        )
      ],
    );
  }
}
