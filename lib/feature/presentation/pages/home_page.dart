import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_with_geolocation/core/const/const.dart';
import 'package:weather_app_with_geolocation/feature/data/datasource/dataset.dart';
import 'package:weather_app_with_geolocation/feature/presentation/widgets/current_weather.dart';
import 'package:weather_app_with_geolocation/feature/presentation/widgets/today_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  getData() async {
    fetchData(lat, lon, city).then((value) {
      currentTemp = value[0];
      todayWeather = value[1];
      tomorrowTemp = value[2];
      sevenDay = value[3];
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
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
                  updateData: getData,
                ),
                const TodayWeather()
              ],
            ),
    );
  }
}
