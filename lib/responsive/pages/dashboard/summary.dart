import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Summary extends StatefulWidget {
  CrossAxisAlignment a;
  Summary({required this.a});
  @override
  _SummaryState createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: widget.a,
      children: [
        Text('Smoose Handle Summary',
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.w500)),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          height: 80,
          width: size.width / 1,
          decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HoverContainer(
                height: 40,
                width: 70,
                hoverHeight: 40,
                hoverWidth: 70,
                decoration: BoxDecoration(
                    color: Colors.green.shade600,
                    borderRadius: BorderRadius.circular(5)),
                hoverDecoration: BoxDecoration(
                    color: Colors.green.shade900,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text('14',
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white))),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text('Pending Notification ',
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.indigo.shade900)),
                        Icon(
                          Icons.notifications_rounded,
                          color: Colors.green.shade600,
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Text('Manage Notifications',
                              style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffff5a1e))),
                          Icon(Icons.arrow_forward_ios,
                              color: Color(0xffff5a1e))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 120,
                  width: size.width / 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('8',
                          style: GoogleFonts.montserrat(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: Colors.indigo)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order',
                              style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54)),
                          Text('Notification',
                              style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              //2
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 120,
                  width: size.width / 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('8',
                          style: GoogleFonts.montserrat(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: Colors.indigo)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order',
                              style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54)),
                          Text('Notification',
                              style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              //3
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 120,
                  width: size.width / 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('8',
                          style: GoogleFonts.montserrat(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: Colors.indigo)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order',
                              style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54)),
                          Text('Notification',
                              style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('Occupied',
                      style: GoogleFonts.montserrat(
                          color: Colors.black54, fontSize: 15)),
                  Text('Table (3/10)',
                      style: GoogleFonts.montserrat(
                          color: Colors.black54, fontSize: 15))
                ],
              ),
              SizedBox(width: 10),
              LinearPercentIndicator(
                width: 140,
                lineHeight: 8,
                percent: 0.5,
                backgroundColor: Colors.grey.shade400,
                progressColor: Color(0xffff5a1e),
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text('30',
                      style: GoogleFonts.montserrat(
                          color: Colors.black54, fontSize: 15)),
                  Text('%',
                      style: GoogleFonts.montserrat(
                          color: Colors.black54, fontSize: 15))
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('Empty',
                      style: GoogleFonts.montserrat(
                          color: Colors.black54, fontSize: 15)),
                  Text('Table (7/10)',
                      style: GoogleFonts.montserrat(
                          color: Colors.black54, fontSize: 15))
                ],
              ),
              SizedBox(width: 10),
              LinearPercentIndicator(
                width: 140,
                lineHeight: 8,
                percent: 0.5,
                backgroundColor: Colors.grey.shade400,
                progressColor: Colors.green.shade600,
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text('30',
                      style: GoogleFonts.montserrat(
                          color: Colors.black54, fontSize: 15)),
                  Text('%',
                      style: GoogleFonts.montserrat(
                          color: Colors.black54, fontSize: 15))
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
