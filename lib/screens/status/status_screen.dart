import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double y;
}

class StatusScreen extends StatelessWidget {
  StatusScreen({super.key});

  final List<ChartData> chartData = [
    ChartData(1, 35),
    ChartData(2, 23),
    ChartData(3, 34),
    ChartData(4, 25),
    ChartData(5, 40),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Translations",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.width / 1.5,
              color: Colors.white,
              child: SfCartesianChart(
                series: <CartesianSeries<ChartData, int>>[
                  // Renders column chart
                  ColumnSeries<ChartData, int>(
                    dataSource: chartData,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    width: 0.2,
                    spacing: 0.1,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    gradient: const LinearGradient(colors: [
                      Color(0xFFFF8D6C),
                      Color(0xFFE064F7),
                      Color(0xFF00B2E7),
                    ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
