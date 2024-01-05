import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Barchartgraph extends StatelessWidget {
  const Barchartgraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 300,
        child: Center(
          child: SfCartesianChart(
            primaryXAxis: const CategoryAxis(),
            series: <BarSeries<ChartData, String>>[
              BarSeries<ChartData, String>(
                dataSource: <ChartData>[
                  ChartData('Sun', 5),
                  ChartData('Sat', 25),
                  ChartData('Fri', 100),
                  ChartData('Thu', 75),
                  ChartData('Wed', 55),
                  ChartData('Tue', 20),
                  ChartData('Mon', 45),
                ],
                xValueMapper: (ChartData sales, _) => sales.day,
                yValueMapper: (ChartData sales, _) => sales.sales,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  final String day;
  final int sales;

  ChartData(this.day, this.sales);
}
