import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solar_app/widgets/info_card.dart';

import 'money_pool.dart';
import 'place_pool.dart';

class Pools extends StatelessWidget {
  const Pools({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: PlacePool(),
          ),
          Expanded(
            flex: 1,
            child: InfoCard(),
          ),
          Expanded(
            flex: 3,
            child: MoneyPool(),
          ),
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;
}
