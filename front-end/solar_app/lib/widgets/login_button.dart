import 'package:flutter/material.dart';
import 'package:solar_app/main.dart';
import 'package:solar_app/pages/dashboard.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (builder) => const Dashboard(),
            ),
          );
        },
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 15)),
          backgroundColor: MaterialStateProperty.all(secondaryColor),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
          child: Text(
            'Σύνδεση',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
