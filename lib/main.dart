import 'package:flutter/material.dart';

import 'package:weather_app/pages/main_weather_page.dart';

void main(List<String> args) {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainWeatherPage(),
    );
  }
}
