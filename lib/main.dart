import 'package:flutter/material.dart';
import 'package:weather_app/HomeScreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
          primaryColor: Colors.white,
          fontFamily: 'Montserrat_Regular',
      ),
      home: new WeatherAppHome()
    );
  }
}

