import 'package:flutter/material.dart';
import 'package:solar_app/widgets/pools.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../main.dart';

class PlacePool extends StatelessWidget {
  const PlacePool({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'Place Pool',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: secondaryColor,
            ),
          ),
        ),
        Container(
          width: 500.0, // Diameter of the circle
          height: 500.0, // Diameter of the circle
          decoration: const BoxDecoration(
            color: Colors.green, // Background color of the circle
            shape: BoxShape.circle, // Makes the Container a circle
          ),
          child: const Center(
            child: Text(
              '500 m\u00B2',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
