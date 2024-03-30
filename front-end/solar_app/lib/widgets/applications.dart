import 'package:flutter/material.dart';
import 'package:solar_app/main.dart';
import 'package:solar_app/services/ink.dart';

class Applications extends StatelessWidget {
  final List<Application>
      applications; // Assuming this list is populated from JSON

  const Applications({
    super.key,
    required this.applications,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
      child: ListView.builder(
        itemCount: applications.length,
        itemBuilder: (context, index) {
          final application = applications[index];
          return ApplicationCard(
            money: application.moneyToInvest?.toString() ?? 'N/A',
            place: application.spaceSize?.toString() ?? 'N/A',
            // Add more parameters as needed
          );
        },
      ),
    );
  }
}

class ApplicationCard extends StatelessWidget {
  const ApplicationCard({
    super.key,
    required this.money,
    required this.place,
  });

  final String money;
  final String place;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkContainer(
        color: primaryColor,
        elevation: 0,
        child: Container(
          height: 100, // Example height of each container
          margin: const EdgeInsets.all(8), // Some spacing around each container
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Investment: $money',
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.euro,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Surface: $place m\u00B2',
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Application {
  final String firstName;
  final String lastName;
  final String afm;
  final int? moneyToInvest;
  final int incomeRange;
  final String? street;
  final int? spaceSize;
  final bool hasMoney;
  final bool hasSpace;

  Application({
    required this.firstName,
    required this.lastName,
    required this.afm,
    this.moneyToInvest,
    required this.incomeRange,
    this.street,
    this.spaceSize,
    required this.hasMoney,
    required this.hasSpace,
  });

  factory Application.fromJson(Map<String, dynamic> json) {
    return Application(
      firstName: json['firstName'],
      lastName: json['lastName'],
      afm: json['afm'],
      moneyToInvest: json['moneyToInvest'],
      incomeRange: json['incomeRange'],
      street: json['street'],
      spaceSize: json['spaceSize'],
      hasMoney: json['hasMoney'],
      hasSpace: json['hasSpace'],
    );
  }
}
