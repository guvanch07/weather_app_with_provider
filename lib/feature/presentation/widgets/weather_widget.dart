import 'package:flutter/material.dart';
import 'package:weather_app_with_geolocation/feature/data/datasource/weather_model.dart';

class WeatherWidget extends StatelessWidget {
  final Weather weather;
  WeatherWidget(this.weather);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            border: Border.all(width: 0.2, color: Colors.white),
            borderRadius: BorderRadius.circular(35)),
        child: Column(
          children: [
            Text(
              weather.current.toString() + "\u00B0",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 5,
            ),
            Image(
              image: AssetImage(weather.image ?? ''),
              width: 50,
              height: 50,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              weather.time ?? '',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
