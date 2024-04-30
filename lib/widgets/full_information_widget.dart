import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/widgets/today_info.dart';

import '../pages/second_page.dart';
import 'info_section.dart';
class FullInformation extends StatelessWidget {
  List<Map<String, dynamic>> dataResponse = [
    {
      'hour': '20:00',
      'image': "images/sun.png",
      'gradus': "Now",
      'isSelected': true,
      'week': "Monday",
      'month': '3 Oct',
      'graducC': '32',
      'graducF': '31',
    },
    {
      'hour': '20:00',
      'image': "images/clouds.png",
      'gradus': "22°",
      'isSelected': false,
      'week': "Tuesday",
      'month': '3 Oct',
      'graducC': '32',
      'graducF': '31',
    },
    {
      'hour': '20:00',
      'image': "images/sun_clouds_run.png",
      'gradus': "26°",
      'isSelected': false,
      'week': "Wednesday",
      'month': '3 Oct',
      'graducC': '32',
      'graducF': '31',
    },
    {
      'hour': '20:00',
      'image': "images/sun_clouds.png",
      'gradus': "28°",
      'isSelected': false,
      'week': "Thursday",
      'month': '3 Oct',
      'graducC': '32',
      'graducF': '31',
    },
    {
      'hour': '20:00',
      'image': "images/sun.png",
      'gradus': "20°",
      'isSelected': false,
      'week': "Friday",
      'month': '3 Oct',
      'graducC': '32',
      'graducF': '31',
    },
    {
      'hour': '20:00',
      'image': "images/clouds.png",
      'gradus': "10°",
      'isSelected': false,
      'week': "Saturday",
      'month': '3 Oct',
      'graducC': '32',
      'graducF': '31',
    },
    {
      'hour': '20:00',
      'image': "images/clouds.png",
      'gradus': "10°",
      'isSelected': false,
      'week': "Sunday",
      'month': '3 Oct',
      'graducC': '32',
      'graducF': '31',
    },
  ];

  FullInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        const Row(
          children: [
            Text(
              "Uzbekistan" ',',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            SizedBox(width: 5),
            Text(
              "Tashkent",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Container(
          height: 290,
          decoration: BoxDecoration(
            color: Colors.blue.shade600,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          ),
          child: Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Image.asset(
                  "images/sun_clouds.png",
                  width: 130,
                  height: 130,
                ),
                const Text(
                  "Heavy Rain",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  "Sundat, 02, Oct",
                  style: TextStyle(
                    color: Colors.white60,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "24°",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 1),
        const InfoSections(
          isBorder: false,
        ),
        const SizedBox(height: 1),
        const InfoSections(
          isBorder: true,
        ),
        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Today",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
              },
              child: Row(
                children: [
                  Text(
                    "Next 7 days",
                    style: TextStyle(
                        color: Colors.grey[500], fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(width: 10),
                  Icon(
                    CupertinoIcons.arrow_right,
                    color: Colors.grey[500],
                  ),
                ],
              ),
            ),
          ],
        ),

        /// [Single scrool wiev]
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (var data in dataResponse)
                TodaysInfo(
                  hour: data['hour'],
                  image: data['image'],
                  gradus: data['gradus'],
                  isSelected: data['isSelected'],
                ),
            ],
          ),
        ),
      ],
    );
  }
}
