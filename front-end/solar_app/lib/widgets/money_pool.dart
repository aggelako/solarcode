import 'package:flutter/material.dart';
import 'package:solar_app/widgets/pools.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../main.dart';

class MoneyPool extends StatelessWidget {
  const MoneyPool({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'Money Pool',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
        ),
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "50.000 €",
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  width: 120,
                  child: Divider(
                    endIndent: 2,
                    color: primaryColor,
                  ),
                ),
                Text(
                  "100.000 €",
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 500,
              child: SfCircularChart(
                series: <CircularSeries>[
                  DoughnutSeries<ChartData, String>(
                    dataSource: [
                      ChartData('Filled', 50, primaryColor),
                      ChartData('Empty', 50, Colors.grey.withOpacity(0.5)),
                    ],
                    pointColorMapper: (ChartData data, _) => data.color,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    radius: '100%', // Adjust as needed
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
