import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app_with_geolocation/core/const/const.dart';
import 'package:weather_app_with_geolocation/core/const/geolocator.dart';
import 'package:weather_app_with_geolocation/feature/data/datasource/dataset.dart';

class LocationPoint extends ChangeNotifier {
  String lat = "";
  String lon = "";
  String city = "";
  String country = "";

  Future locationPoint() async {
    Position pos = await determinePosition();
    List<Placemark> pm =
        await placemarkFromCoordinates(pos.latitude, pos.longitude);
    Placemark place = pm[0];
    lat = pos.latitude.toString();
    lon = pos.longitude.toString();
    city = place.locality.toString();
    country = place.country.toString();

    notifyListeners();

    fetchData(lat, lon, city).then((value) {
      currentTemp = value[0];
      todayWeather = value[0];
      tomorrowTemp = value[0];
      sevenDay = value[0];
    });
  }
}
