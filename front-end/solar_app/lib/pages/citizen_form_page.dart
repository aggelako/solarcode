import 'package:flutter/material.dart';
import 'package:solar_app/widgets/dashboard_appbar.dart';
import 'package:solar_app/widgets/form_appbar.dart';

import '../main.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.icon,
    this.keyboardType = TextInputType.text,
    this.isObscured = false,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final TextInputType keyboardType;
  final bool isObscured;

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
            color: Colors.grey.shade400, // Adjusted for general use
          ),
        ),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            icon: Icon(icon, color: Colors.grey[600]),
            hintText: hintText,
            border: const UnderlineInputBorder(borderSide: BorderSide.none),
            focusedBorder:
                const UnderlineInputBorder(borderSide: BorderSide.none),
          ),
          keyboardType: keyboardType,
          obscureText: isObscured,
          textInputAction: TextInputAction.next,
        ),
      ),
    );
  }
}

// Example usage in a form
class CitizenForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<CitizenForm> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController afmController = TextEditingController();
  final TextEditingController moneyToInvestController = TextEditingController();
  final TextEditingController incomeRangeController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController spaceSizeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FormAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                  controller: firstNameController,
                  hintText: "First Name",
                  icon: Icons.person),
              CustomTextField(
                  controller: lastNameController,
                  hintText: "Last Name",
                  icon: Icons.person_outline),
              CustomTextField(
                  controller: afmController,
                  hintText: "AFM",
                  icon: Icons.confirmation_num),
              CustomTextField(
                  controller: moneyToInvestController,
                  hintText: "Money to Invest",
                  icon: Icons.attach_money,
                  keyboardType: TextInputType.number),
              CustomTextField(
                  controller: incomeRangeController,
                  hintText: "Income Range",
                  icon: Icons.trending_up,
                  keyboardType: TextInputType.number),
              CustomTextField(
                  controller: streetController,
                  hintText: "Street",
                  icon: Icons.streetview),
              CustomTextField(
                  controller: spaceSizeController,
                  hintText: "Space Size (sqm)",
                  icon: Icons.space_bar,
                  keyboardType: TextInputType.number),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 80,
                  width: 200,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(vertical: 15)),
                      backgroundColor:
                          MaterialStateProperty.all(secondaryColor),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      // Implement submission logic
                    },
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
