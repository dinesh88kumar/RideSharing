import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WeeklyChart extends StatefulWidget {
  @override
  _WeeklyChartState createState() => _WeeklyChartState();
}

class _WeeklyChartState extends State<WeeklyChart> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      height: 400,
      width: size.width / 1.5,
      child: SfCartesianChart(
          //   borderColor: Colors.transparent,
          tooltipBehavior: TooltipBehavior(enable: true),
          margin: EdgeInsets.zero,
          primaryXAxis: CategoryAxis(),
          series: <CartesianSeries>[
            SplineAreaSeries<Weekly, String>(
                markerSettings: MarkerSettings(
                    isVisible: true, color: Colors.orange.shade800),
                color: Colors.orange.shade200,
                borderColor: Colors.orange.shade800,
                opacity: 0.5,
                borderWidth: 5,
                dataSource: [
                  Weekly('mon', 10),
                  Weekly('tue', 40),
                  Weekly('wed', 15),
                  Weekly('thu', 30),
                  Weekly('fri', 20),
                  Weekly('sat', 40),
                  Weekly('sun', 15),
                ],
                xValueMapper: (Weekly money, _) => money.week,
                yValueMapper: (Weekly money, _) => money.money)
          ]),
    );
  }
}

class Weekly {
  String week;
  int money;
  Weekly(this.week, this.money);
}
