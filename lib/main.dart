import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app_with_geolocation/feature/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        title: 'Weather',
        theme: ThemeData(
            textTheme: Theme.of(context)
                .textTheme
                .apply(bodyColor: Colors.white, displayColor: Colors.blue)),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
