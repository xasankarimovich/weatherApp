import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoSections extends StatelessWidget {
  final bool isBorder;
  const InfoSections({super.key, required this.isBorder});

  Widget buildContainers() {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: [
          Row(
            children: [
              Icon(
                CupertinoIcons.wind,
                color: Colors.white,
                size: 25,
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "WIND",
                    style: TextStyle(
                      color: Colors.white70,
                      letterSpacing: 5,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "19.2km/j",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 80,
          width: 220,
          decoration: BoxDecoration(
            color: Colors.blue.shade600,
            borderRadius: isBorder
                ? const BorderRadius.only(
              bottomLeft: Radius.circular(15),
            )
                : null,
          ),
          child: buildContainers(),
        ),
        Container(
          height: 80,
          width: 220,
          decoration: BoxDecoration(
            color: Colors.blue.shade600,
            borderRadius: isBorder
                ? const BorderRadius.only(bottomRight: Radius.circular(15))
                : null,
          ),
          child: buildContainers(),
        ),
      ],
    );
  }
}
