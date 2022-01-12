import 'package:flutter/material.dart';

import 'package:weather_app_with_geolocation/feature/data/datasource/weather_model.dart';
import 'package:weather_app_with_geolocation/feature/presentation/widgets/seven_days.dart';
import 'package:weather_app_with_geolocation/feature/presentation/widgets/tommorow.dart';

class DetailPage extends StatelessWidget {
  final Weather tomorrowTemp;
  final List<Weather> sevenDay;
  const DetailPage({
    Key? key,
    required this.tomorrowTemp,
    required this.sevenDay,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030317),
      body: Column(
        children: [
          TomorrowWeather(
            tomorrowTemp: tomorrowTemp,
          ),
          SevenDays(
            sevenDay: sevenDay,
          )
        ],
      ),
    );
  }
}
