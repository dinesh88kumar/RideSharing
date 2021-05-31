import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MostSellingDaily extends StatefulWidget {
  @override
  _MostSellingDailyState createState() => _MostSellingDailyState();
}

class _MostSellingDailyState extends State<MostSellingDaily> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          MostsellingRow(),
          SizedBox(height: 20),
          MostsellingRow(),
          SizedBox(height: 20),
          MostsellingRow(),
          SizedBox(height: 20),
          MostsellingRow(),
          SizedBox(height: 20),
          MostsellingRow(),
        ],
      ),
    );
  }
}

class MostsellingRow extends StatefulWidget {
  @override
  _MostsellingRowState createState() => _MostsellingRowState();
}

class _MostsellingRowState extends State<MostsellingRow> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                height: 10,
              ),
              AutoSizeText('MAIN COURSE',
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffff5a1e),
                      textStyle: TextStyle())),
              SizedBox(
                width: size.width / 20,
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width / 5,
        ),
        Container(
          padding: EdgeInsets.only(top: 30),
          child: AutoSizeText('Rs.12.56',
              style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  textStyle: TextStyle())),
        ),
      ],
    );
  }
}

//tab
class Mostsellingtab extends StatefulWidget {
  @override
  _MostsellingtabState createState() => _MostsellingtabState();
}

class _MostsellingtabState extends State<Mostsellingtab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            MostSellingTabRow(),
            SizedBox(
              height: 20,
            ),
            MostSellingTabRow(),
            SizedBox(
              height: 20,
            ),
            MostSellingTabRow(),
            SizedBox(
              height: 20,
            ),
            MostSellingTabRow(),
          ],
        ));
  }
}

class MostSellingTabRow extends StatefulWidget {
  @override
  _MostSellingTabRowState createState() => _MostSellingTabRowState();
}

class _MostSellingTabRowState extends State<MostSellingTabRow> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://lh3.googleusercontent.com/fsYoIEccNZN9-XtB2FGM0tuou7HK1Eu_d3wpRYglUE4wEWxw6hRuG1vrL4i_6t85TyDrKAO7-Mfy5R1mq8XTOg=s1200-e365',
            fit: BoxFit.cover,
            height: 90,
            width: 70,
          ),
        ),
        SizedBox(
          width: size.width / 80,
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
                height: 10,
              ),
              AutoSizeText('MAIN COURSE',
                  style: GoogleFonts.montserrat(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffff5a1e),
                      textStyle: TextStyle())),
            ],
          ),
        ),
        SizedBox(
          width: size.width / 10,
        ),
        Container(
          padding: EdgeInsets.only(top: 30),
          child: AutoSizeText('Rs.12.56',
              style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  textStyle: TextStyle())),
        ),
      ],
    );
  }
}

class MostSellingMobile extends StatefulWidget {
  @override
  _MostSellingMobileState createState() => _MostSellingMobileState();
}

class _MostSellingMobileState extends State<MostSellingMobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          MostSellingMobileRow(),
          SizedBox(
            height: 20,
          ),
          MostSellingMobileRow(),
          SizedBox(
            height: 20,
          ),
          MostSellingMobileRow(),
          SizedBox(
            height: 20,
          ),
          MostSellingMobileRow(),
        ],
      ),
    );
  }
}

class MostSellingMobileRow extends StatefulWidget {
  @override
  _MostSellingMobileRowState createState() => _MostSellingMobileRowState();
}

class _MostSellingMobileRowState extends State<MostSellingMobileRow> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
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
              AutoSizeText('Tuna soup spinach with',
                  style: GoogleFonts.montserrat(
                      fontSize: size.width > 400 ? 14 : 12,
                      fontWeight: FontWeight.w400,
                      textStyle: TextStyle())),
              AutoSizeText('himalaya salt',
                  style: GoogleFonts.montserrat(
                      fontSize: size.width > 400 ? 14 : 12,
                      fontWeight: FontWeight.w400,
                      textStyle: TextStyle())),
              SizedBox(
                height: 5,
              ),
              AutoSizeText('MAIN COURSE',
                  style: GoogleFonts.montserrat(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffff5a1e),
                      textStyle: TextStyle())),
            ],
          ),
        ),
        SizedBox(
          width: size.width > 400 ? size.width / 5 : size.width / 50,
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: AutoSizeText('Rs.12.56',
              style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  textStyle: TextStyle())),
        ),
      ],
    );
  }
}
