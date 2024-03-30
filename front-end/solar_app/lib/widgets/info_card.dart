import 'package:flutter/material.dart';
import 'package:solar_app/main.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [secondaryColor, primaryColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15), // Border radius
        border: Border.all(
          color: primaryColor, // Border color
          width: 2, // Border width
        ),
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            'Information',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20), // Spacing between title and content
          Text(
            'For the installation of photovoltaics on 500m², 100,000€ are needed.',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
