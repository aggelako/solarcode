import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solar_app/main.dart';

import '../widgets/applications.dart';
import '../widgets/solar_map.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Applications',
          style: TextStyle(color: primaryColor, fontSize: 40),
        ),
      ),
      body: const Row(
        children: [
          Expanded(flex: 2, child: SolarMap()),
          Expanded(
            flex:
                1, // Adjust flex to control the width ratio between the image and the list
            child: Applications(),
          ),
        ],
      ),
    );
  }
}
