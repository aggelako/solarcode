import 'package:flutter/material.dart';
import 'package:solar_app/main.dart';
import 'package:solar_app/pages/citizen_applications_page.dart';
import 'package:solar_app/pages/map_page.dart';
import 'package:solar_app/pages/pool_page.dart';

import '../widgets/dashboard_appbar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const PoolPage(),
    const MapPage(),
    const CitizenApplicationsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DashboardAppBar(),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white70,
              ),
              child: Image(
                image: AssetImage('logo.png'),
                height: 250,
              ),
            ),
            ListTile(
              title: const Text('Home Page'),
              onTap: () => _onItemTapped(0),
            ),
            ListTile(
              title: const Text('Pools'),
              onTap: () => _onItemTapped(1),
            ),
            ListTile(
              title: const Text('Applications'),
              onTap: () => _onItemTapped(2),
            ),
          ],
        ),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
    );
  }
}
