import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Revenue extends StatefulWidget {
  CrossAxisAlignment a;
  Revenue({required this.a});
  @override
  _RevenueState createState() => _RevenueState();
}

class _RevenueState extends State<Revenue> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: widget.a,
        children: [
          Text('Revenue',
              style: GoogleFonts.montserrat(
                  fontSize: 20, fontWeight: FontWeight.w500)),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Column(
                  children: [
                    Text('Last Week',
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54)),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.leaderboard, color: Colors.blue, size: 20),
                        SizedBox(
                          width: 10,
                        ),
                        Text('41,345k'.toString(),
                            style: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.indigo)),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text('Last Week',
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54)),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.leaderboard,
                          color: Color(0xffff5a1e),
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('51,345k'.toString(),
                            style: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.indigo)),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
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
            padding: EdgeInsets.only(left: 30, top: 20),
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
          )
        ]);
  }
}

class WeekData {
  WeekData(this.days, this.money);
  final double money;
  final String days;
}
