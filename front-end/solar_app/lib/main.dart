import 'package:flutter/material.dart';
import 'package:solar_app/pages/dashboard.dart';
import 'package:solar_app/pages/login_page.dart';

const Color primaryColor = Color(0xFF4472C4);
const Color secondaryColor = Color(0xFF70AD47);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
