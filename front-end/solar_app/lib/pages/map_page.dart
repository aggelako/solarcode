import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solar_app/main.dart';

import '../widgets/applications.dart';
import '../widgets/solar_map.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Applications',
          style: TextStyle(color: primaryColor, fontSize: 40),
        ),
      ),
      body: Row(
        children: [
          const Expanded(flex: 2, child: SolarMap()),
          Expanded(
            flex:
                1, // Adjust flex to control the width ratio between the image and the list
            child: Applications(
              applications:
                  List.from(jsons.map((e) => Application.fromJson(e))),
            ),
          ),
        ],
      ),
    );
  }
}

final jsons = [
  {
    "firstName": "George",
    "lastName": "Zervoleas",
    "afm": "748110699",
    "moneyToInvest": 10000,
    "incomeRange": 1,
    "street": "Zografou 22",
    "spaceSize": 500,
    "hasMoney": true,
    "hasSpace": false
  },
  {
    "firstName": "Thanos",
    "lastName": "Aggelakopoulos",
    "afm": "148110699",
    "moneyToInvest": 1000,
    "incomeRange": 3,
    "street": null,
    "spaceSize": null,
    "hasMoney": true,
    "hasSpace": false
  },
  {
    "firstName": "Sofo",
    "lastName": "Strobolas",
    "afm": "148110889",
    "moneyToInvest": 10000,
    "incomeRange": 2,
    "street": "Zografou 50",
    "spaceSize": null,
    "hasMoney": true,
    "hasSpace": true
  },
  {
    "firstName": "Anestis",
    "lastName": "Mitakidis",
    "afm": "149110699",
    "moneyToInvest": 5000,
    "incomeRange": 4,
    "street": null,
    "spaceSize": null,
    "hasMoney": true,
    "hasSpace": false
  },
  {
    "firstName": "Kiriakos",
    "lastName": "Kalkanis",
    "afm": "248110699",
    "moneyToInvest": 5000,
    "incomeRange": 5,
    "street": "Zografou 24",
    "spaceSize": 100,
    "hasMoney": true,
    "hasSpace": true
  },
  {
    "firstName": "Dimitris",
    "lastName": "Fragos",
    "afm": "348110699",
    "moneyToInvest": 3000,
    "incomeRange": 1,
    "street": null,
    "spaceSize": null,
    "hasMoney": true,
    "hasSpace": false
  },
  {
    "firstName": "Vangelis",
    "lastName": "Garaganis",
    "afm": "548110699",
    "moneyToInvest": 7000,
    "incomeRange": 2,
    "street": "Zografou 22",
    "spaceSize": 50,
    "hasMoney": true,
    "hasSpace": true
  },
  {
    "firstName": "Makris",
    "lastName": "Dimitris",
    "afm": "139110699",
    "moneyToInvest": null,
    "incomeRange": 2,
    "street": "Zografou 54",
    "spaceSize": 100,
    "hasMoney": false,
    "hasSpace": true
  },
  {
    "firstName": "George",
    "lastName": "Mantasas",
    "afm": "448110699",
    "moneyToInvest": null,
    "incomeRange": 1,
    "street": "Zografou 22",
    "spaceSize": 200,
    "hasMoney": false,
    "hasSpace": true
  },
  {
    "firstName": "Giannis",
    "lastName": "Asimakopoulos",
    "afm": "648110699",
    "moneyToInvest": null,
    "incomeRange": 1,
    "street": "Zografou 22",
    "spaceSize": 500,
    "hasMoney": false,
    "hasSpace": true
  }
];
