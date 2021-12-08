import 'package:flutter/material.dart';
import 'package:open_weather_widget/open_weather_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final String apiKey = "myApiKey";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Weather Widget Example"),
        ),
        body: Center(
          child: OpenWeatherWidget(
            latitude: 43.768333,
            longitude: -121.633056,
            location: "Deschutes National Forrest",
            unit: "imperial",
            height: 180,
            apiKey: apiKey,
            alignment: MainAxisAlignment.center,
            margin: EdgeInsets.all(5),
          ),
        ),
      ),
    );
  }
}
