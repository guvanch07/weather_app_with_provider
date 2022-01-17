import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app_with_geolocation/core/const/const.dart';
import 'package:weather_app_with_geolocation/core/const/geolocator.dart';
import 'package:weather_app_with_geolocation/feature/data/datasource/dataset.dart';
import 'package:weather_app_with_geolocation/feature/presentation/notifiers/geolocation_listiners.dart';
import 'package:weather_app_with_geolocation/feature/presentation/widgets/current_weather.dart';
import 'package:weather_app_with_geolocation/feature/presentation/widgets/today_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<LocationPoint>().locationPoint();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030317),
      body: currentTemp == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                CurrentWeather(
                  updateData: context.read<LocationPoint>().locationPoint,
                ),
                const TodayWeather()
              ],
            ),
    );
  }
}
