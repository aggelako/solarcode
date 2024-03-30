import 'package:flutter/material.dart';

import '../main.dart';

class FormAppbar extends StatelessWidget implements PreferredSizeWidget {
  const FormAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      automaticallyImplyLeading: false,
      title: const Text(
        'Solarization Form',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w300,
          color: Colors.white, // Green color for this part
        ),
      ),
      backgroundColor: primaryColor,
      toolbarHeight: kBottomNavigationBarHeight + 50,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            iconSize: 40,
            icon: const Icon(
              Icons.language_rounded,
              color: Colors.white,
              size: 40,
            ),
            onPressed: () {},
            tooltip: 'Change Language',
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            iconSize: 40,
            icon: const Icon(
              Icons.exit_to_app_rounded,
              color: Colors.white,
              size: 40,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            tooltip: 'Log Out',
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 50);
}
