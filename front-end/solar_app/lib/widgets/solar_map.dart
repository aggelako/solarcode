import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class SolarMap extends StatelessWidget {
  const SolarMap({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: HtmlWidget(
        '''
            <iframe src="http://gis.cityofathens.gr/maps/145/embed" style="border: none;" height="600" width="1200"></iframe>
            ''',
        // Optionally, tweak styling and other options
      ),
    );
  }
}
