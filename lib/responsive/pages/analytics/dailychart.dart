import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DailyChart extends StatefulWidget {
  @override
  _DailyChartState createState() => _DailyChartState();
}

class _DailyChartState extends State<DailyChart> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      height: 420,
      width: size.width / 1.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    ),
                    Text('Total Sales',
                        style: GoogleFonts.montserrat(fontSize: 14)),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    ),
                    Text('This Week',
                        style: GoogleFonts.montserrat(fontSize: 14)),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SfCartesianChart(
              //   borderColor: Colors.transparent,
              tooltipBehavior: TooltipBehavior(enable: true),
              margin: EdgeInsets.zero,
              primaryXAxis: CategoryAxis(),
              series: <CartesianSeries>[
                SplineAreaSeries<Monthly, String>(
                    markerSettings: MarkerSettings(
                        isVisible: true, color: Colors.orange.shade800),
                    color: Colors.orange.shade200,
                    borderColor: Colors.orange.shade800,
                    opacity: 0.5,
                    borderWidth: 5,
                    dataSource: [
                      Monthly('jan', 10),
                      Monthly('feb', 40),
                      Monthly('mar', 15),
                      Monthly('apr', 30),
                      Monthly('may', 20),
                      Monthly('jun', 40),
                      Monthly('july', 15),
                      Monthly('aug', 30),
                      Monthly('sep', 20)
                    ],
                    xValueMapper: (Monthly money, _) => money.month,
                    yValueMapper: (Monthly money, _) => money.money)
              ]),
        ],
      ),
    );
  }
}

class Monthly {
  String month;
  int money;
  Monthly(this.month, this.money);
}

class DailyMobileChart extends StatefulWidget {
  @override
  _DailyMobileChartState createState() => _DailyMobileChartState();
}

class _DailyMobileChartState extends State<DailyMobileChart> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      height: 420,
      width: size.width / 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.leaderboard, color: Colors.blue, size: 20),
                        SizedBox(
                          width: 5,
                        ),
                        Text('41,345k'.toString(),
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.indigo)),
                      ],
                    ),
                    Text('Total Sales',
                        style: GoogleFonts.montserrat(fontSize: 14)),
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.leaderboard,
                          color: Color(0xffff5a1e),
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('51,345k'.toString(),
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.indigo)),
                      ],
                    ),
                    Text('This Week',
                        style: GoogleFonts.montserrat(fontSize: 14)),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SfCartesianChart(
              //   borderColor: Colors.transparent,
              tooltipBehavior: TooltipBehavior(enable: true),
              margin: EdgeInsets.zero,
              primaryXAxis: CategoryAxis(),
              series: <CartesianSeries>[
                SplineAreaSeries<Monthly, String>(
                    markerSettings: MarkerSettings(
                        isVisible: true, color: Colors.orange.shade800),
                    color: Colors.orange.shade200,
                    borderColor: Colors.orange.shade800,
                    opacity: 0.5,
                    borderWidth: 5,
                    dataSource: [
                      Monthly('jan', 10),
                      Monthly('feb', 40),
                      Monthly('mar', 15),
                      Monthly('apr', 30),
                      Monthly('may', 20),
                      Monthly('jun', 40),
                      Monthly('july', 15),
                      Monthly('aug', 30),
                      Monthly('sep', 20)
                    ],
                    xValueMapper: (Monthly money, _) => money.month,
                    yValueMapper: (Monthly money, _) => money.money)
              ]),
        ],
      ),
    );
  }
}
