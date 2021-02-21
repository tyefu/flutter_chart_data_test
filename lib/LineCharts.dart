import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LineCharts extends StatelessWidget {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      height: 380,
      width: 380,
      child: LineChart(
        LineChartData(
            minY: 0.0,
            minX: 0.0,
            maxY: 30,
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(1, 6.8),
                  FlSpot(2, 13.9),
                  FlSpot(3, 22.8),
                  FlSpot(4, 18.9),
                  FlSpot(5, 20.0),
                  FlSpot(6, 8.9),
                  FlSpot(7, 20.0),
                  FlSpot(8, 20),
                  FlSpot(9, 18),
                ],
                barWidth: 1,
                colors: gradientColors,
              ),
            ],
            titlesData: FlTitlesData(
                leftTitles: SideTitles(
              reservedSize: 60,
              margin: 10,
              showTitles: true,
              getTextStyles: (value) => TextStyle(
                color: Colors.black,
                fontSize: 7,

              ),
              getTitles: (value) {
                return '$value/k';
              },
            ),),),
      ),
    );
  }
}
