import 'dart:developer';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app_with_geolocation/feature/data/datasource/weather_model.dart';

import '../gaolocator.dart';

//todo download geolocator pck and set it up with lat and long

String lat = "";
String lon = "";
String city = "";

// location() async {
//   Position pos = await determinePosition();
//   List<Placemark> pm =
//       await placemarkFromCoordinates(pos.latitude, pos.longitude);
//   Placemark place = pm[0];
//   lat = pos.latitude.toString();
//   lon = pos.longitude.toString();
//   city = place.locality.toString();
//   log(pos.latitude.toString());
//   log(pos.longitude.toString());
//   log(place.locality.toString());
//}

Weather currentTemp = Weather();
Weather tomorrowTemp = Weather();
List<Weather> todayWeather = [];
List<Weather> sevenDay = [];
