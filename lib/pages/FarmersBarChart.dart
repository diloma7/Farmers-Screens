import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class FarmBarChart extends StatefulWidget {
  const FarmBarChart({Key? key}) : super(key: key);

  @override
  State<FarmBarChart> createState() => _FarmBarChartState();
}

class _FarmBarChartState extends State<FarmBarChart> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SfCartesianChart(
        backgroundColor: Colors.white,
        primaryXAxis: CategoryAxis(),
        legend: Legend(
          isVisible: true,
          overflowMode: LegendItemOverflowMode.scroll,
        ),
        series: <ChartSeries>[
          ColumnSeries<ChartSampleData, String>(
            dataSource: [
              ChartSampleData(x: 'Jan', y: -20),
              ChartSampleData(x: 'Feb', y: -50),
              ChartSampleData(x: 'Mar', y: -30),
              ChartSampleData(x: 'Apr', y: -40),
              ChartSampleData(x: 'May', y: -60),
            ],
            xValueMapper: (ChartSampleData sales, _) => sales.x,
            yValueMapper: (ChartSampleData sales, _) => sales.y,
            color: Colors.red,
          ),
          ColumnSeries<ChartSampleData, String>(
            dataSource: [
              ChartSampleData(x: 'Jan', y: 25),
              ChartSampleData(x: 'Feb', y: 30),
              ChartSampleData(x: 'Mar', y: 28),
              ChartSampleData(x: 'Apr', y: 18),
              ChartSampleData(x: 'May', y: 17),
              ChartSampleData(x: 'Jun', y: 10),
              ChartSampleData(x: 'Jul', y: -10),
              ChartSampleData(x: 'Aug', y: -40),
            ],
            xValueMapper: (ChartSampleData sales, _) => sales.x,
            yValueMapper: (ChartSampleData sales, _) => sales.y,
            color: const Color.fromARGB(255, 208, 189, 21),
          ),
          ColumnSeries<ChartSampleData, String>(
            dataSource: [
              ChartSampleData(x: 'Jan', y: 20),
              ChartSampleData(x: 'Feb', y: 50),
              ChartSampleData(x: 'Mar', y: 30),
              ChartSampleData(x: 'Apr', y: 40),
              ChartSampleData(x: 'May', y: 60),
            ],
            xValueMapper: (ChartSampleData sales, _) => sales.x,
            yValueMapper: (ChartSampleData sales, _) => sales.y,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class ChartSampleData {
  final String x;
  final double y;

  ChartSampleData({required this.x, required this.y});
}
