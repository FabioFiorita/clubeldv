import 'package:flutter/material.dart';

class DiscountInfoCard extends StatelessWidget {
  final String info;
  final IconData icon;
  final String secondaryInfo;
  final IconData secondaryIcon;

  const DiscountInfoCard(
      {Key? key,
      required this.info,
      required this.icon,
      required this.secondaryInfo,
      required this.secondaryIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                icon,
              ),
              iconColor: Colors.red,
              title: Text(info),
            ),
            ListTile(
              leading: Icon(
                secondaryIcon,
              ),
              iconColor: Colors.red,
              title: Text(secondaryInfo),
            ),
          ],
        ),
      ),
    );
  }
}
