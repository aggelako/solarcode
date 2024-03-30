import 'package:flutter/material.dart';
import 'package:solar_app/main.dart';
import 'package:solar_app/services/ink.dart';

class Applications extends StatelessWidget {
  const Applications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
      child: ListView.builder(
        itemCount: 20, // Example item count
        itemBuilder: (context, index) {
          return const ApplicationCard(
            money: '20',
            place: '50',
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
                                color: Colors.white, fontSize: 30),
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
                                color: Colors.white, fontSize: 30),
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
