import 'package:flutter/material.dart';

import '../main.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
    required this.passwordController,
  }) : super(key: key);
  final passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: secondaryColor,
          ),
        ),
        child: TextField(
          onChanged: (value) {},
          autofillHints: const [AutofillHints.email],
          controller: passwordController,
          decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
              color: Colors.grey[600],
            ),
            border: const UnderlineInputBorder(borderSide: BorderSide.none),
            focusedBorder:
                const UnderlineInputBorder(borderSide: BorderSide.none),
            labelStyle: const TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w500,
                letterSpacing: 2),
          ),
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
        ),
      ),
    );
  }
}
