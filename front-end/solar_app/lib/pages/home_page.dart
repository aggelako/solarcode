import 'package:flutter/material.dart';
import 'package:solar_app/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (builder) => const LoginPage(),
              ),
            );
          },
          child: const Text('Login page'),
        ),
      ),
    );
  }
}
