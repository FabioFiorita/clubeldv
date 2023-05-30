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
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            offset: const Offset(2, 2),
            blurRadius: 6,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(
                  icon,
                ),
                iconColor: Colors.red,
                title: SelectableText(info),
              ),
              ListTile(
                leading: Icon(
                  secondaryIcon,
                ),
                iconColor: Colors.red,
                title: SelectableText(secondaryInfo),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
