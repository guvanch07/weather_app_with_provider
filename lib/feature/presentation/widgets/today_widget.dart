import 'package:flutter/material.dart';
import 'package:weather_app_with_geolocation/core/const/const.dart';
import 'package:weather_app_with_geolocation/feature/presentation/pages/detail_page.dart';
import 'package:weather_app_with_geolocation/feature/presentation/widgets/weather_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodayWeather extends StatelessWidget {
  const TodayWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Today",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return DetailPage(
                      sevenDay: sevenDay,
                      tomorrowTemp: tomorrowTemp,
                    );
                  }));
                },
                child: Row(
                  children: [
                    Text(
                      "7 days ",
                      style: TextStyle(fontSize: 18.sp, color: Colors.grey),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey,
                      size: 15.sp,
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
              height: 140,
              width: double.infinity,
              child: ListView.builder(
                  //shrinkWrap: true,
                  itemCount: todayWeather.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return WeatherWidget(todayWeather[index]);
                  }))
        ],
      ),
    );
  }
}
