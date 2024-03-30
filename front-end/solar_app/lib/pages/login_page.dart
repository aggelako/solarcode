import 'package:flutter/material.dart';
import 'package:solar_app/main.dart';
import 'package:solar_app/widgets/password_field.dart';

import '../widgets/email_field.dart';
import '../widgets/login_button.dart';
import '../widgets/logo_motto.dart';
import '../widgets/taxisnet_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: SingleChildScrollView(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final bool isWideScreen = constraints.maxWidth > 600;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (isWideScreen)
                      const Expanded(
                        flex: 2,
                        child: LogoMotto(),
                      ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(5, 33, 149, 243),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: primaryColor)),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (isWideScreen)
                                const SizedBox(
                                  height: 100,
                                ),
                              const Text(
                                'Συνδεθείτε εδώ!',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              EmailField(
                                emailController: TextEditingController(),
                              ),
                              PasswordField(
                                  passwordController: TextEditingController()),
                              const SizedBox(height: 40),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TaxisnetButton(),
                                  LoginButton(),
                                ],
                              ),
                              if (isWideScreen)
                                const SizedBox(
                                  height: 100,
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
