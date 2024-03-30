import 'package:flutter/widgets.dart';
import 'package:solar_app/main.dart';

class LogoMotto extends StatelessWidget {
  const LogoMotto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Image(
          image: AssetImage('logo.png'),
          height: 250,
        ),
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Unlocking Solar Potential ',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: secondaryColor, // Green color for this part
                ),
              ),
              TextSpan(
                text: 'Empowering Progress!',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: primaryColor, // Blue color for this part
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
