import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solar_app/widgets/dashboard_appbar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../main.dart';
import '../widgets/pools.dart';

class InvestmentSummaryPage extends StatelessWidget {
  const InvestmentSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DashboardAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Forcasted Energy Production',
                        style: TextStyle(
                          fontSize: 18,
                          color: primaryColor,
                        ),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          const Text(
                            '55.000 kW',
                            style: TextStyle(
                              fontSize: 18,
                              color: primaryColor,
                            ),
                          ),
                          SizedBox(
                            height: 300,
                            child: SfCircularChart(
                              series: <CircularSeries>[
                                DoughnutSeries<ChartData, String>(
                                  dataSource: [
                                    ChartData('Filled', 100, primaryColor),
                                  ],
                                  pointColorMapper: (ChartData data, _) =>
                                      data.color,
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
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'CO2 Emition',
                        style: TextStyle(
                          fontSize: 18,
                          color: secondaryColor,
                        ),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          const Text(
                            '2.255.000 gr',
                            style: TextStyle(
                              fontSize: 18,
                              color: secondaryColor,
                            ),
                          ),
                          SizedBox(
                            height: 300,
                            child: SfCircularChart(
                              series: <CircularSeries>[
                                DoughnutSeries<ChartData, String>(
                                  dataSource: [
                                    ChartData('Filled', 100, secondaryColor),
                                  ],
                                  pointColorMapper: (ChartData data, _) =>
                                      data.color,
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
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: InvestmentChart(),
                ),
                Expanded(
                  flex: 1,
                  child: DataTableWidget(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InvestmentData {
  final String category;
  final int value;

  InvestmentData(this.category, this.value);
}

class InvestmentChart extends StatelessWidget {
  final List<InvestmentData> data = [
    InvestmentData('Money', 4),
    InvestmentData('Space', 3),
    InvestmentData('Space and Money', 3),
  ];

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(
        // Apply TextStyle to the labels of the X Axis
        labelStyle: TextStyle(
          fontSize: 18,
          color: secondaryColor,
        ),
      ),
      primaryYAxis: const NumericAxis(
        // Apply TextStyle to the labels of the Y Axis
        labelStyle: TextStyle(
          fontSize: 18,
          color: primaryColor,
        ),
      ),
      title: const ChartTitle(
        text: 'Investment Types',
        textStyle: TextStyle(
          fontSize: 18,
          color: primaryColor,
        ),
      ),
      legend: const Legend(isVisible: false),
      tooltipBehavior: TooltipBehavior(enable: true),
      series: <CartesianSeries>[
        ColumnSeries<InvestmentData, String>(
          dataSource: data,
          xValueMapper: (InvestmentData investments, _) => investments.category,
          yValueMapper: (InvestmentData investments, _) => investments.value,
          name: 'Investments',
          color: primaryColor,
        ),
      ],
    );
  }
}

class DataTableWidget extends StatelessWidget {
  // Data
  final int sumOfMoney = 51000;
  final int sumOfSpace = 960;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0), // Set border radius here
        ),
        elevation: 5, // Optional: Adds a shadow beneath the card
        child: Padding(
          padding: const EdgeInsets.all(
              8.0), // Optional: Adds space inside the card around the DataTable
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  'Category',
                  style: TextStyle(
                    fontSize: 18,
                    color: secondaryColor,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Value',
                  style: TextStyle(
                    fontSize: 18,
                    color: secondaryColor,
                  ),
                ),
              ),
            ],
            rows: <DataRow>[
              DataRow(
                cells: <DataCell>[
                  const DataCell(Text(
                    'Sum of Money (€)',
                    style: TextStyle(
                      fontSize: 18,
                      color: primaryColor,
                    ),
                  )),
                  DataCell(Text(
                    '$sumOfMoney',
                    style: const TextStyle(
                      fontSize: 18,
                      color: primaryColor,
                    ),
                  )),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  const DataCell(Text(
                    'Sum of Space (sqm)',
                    style: TextStyle(
                      fontSize: 18,
                      color: primaryColor,
                    ),
                  )),
                  DataCell(Text(
                    '$sumOfSpace',
                    style: const TextStyle(
                      fontSize: 18,
                      color: primaryColor,
                    ),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
