import 'package:flutter/material.dart';

class TodaysInfo extends StatelessWidget {
  final String hour;
  final String image;
  final String gradus;
  final bool isSelected;
  const TodaysInfo({
    super.key,
    required this.hour,
    required this.image,
    required this.gradus,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isSelected ? Colors.blue : null,
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: Column(
            children: [
              Text(
                hour,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: isSelected ? Colors.white : null,
                ),
              ),
              const SizedBox(height: 3),
              Image.asset(image),
              const SizedBox(height: 3),
              Text(
                gradus,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: isSelected ? Colors.white : null,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
