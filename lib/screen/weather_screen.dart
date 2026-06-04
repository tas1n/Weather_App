import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weatherapp/screen/additional_info_item.dart';
import 'package:weatherapp/screen/weather_forecasting.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
          // GestureDetector(
          //   onTap: () {
          //     print("refresh");
          //   },
          //   child: Icon(Icons.refresh),
          //),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //<==main card==>
            // const Placeholder(fallbackHeight: 250),
            SizedBox(
              width: double.infinity,
              child: Card(
                color: const Color.fromARGB(255, 78, 78, 78),
                //elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            '300° F',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                            ),
                          ),
                          Icon(Icons.cloud, size: 64),
                          Text(
                            "Rain",
                            style: TextStyle(fontWeight: FontWeight(20)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            //<==forcasting card==>
            //const Placeholder(fallbackHeight: 150),
            const SizedBox(height: 20),
            Text(
              "Weather Forecast",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForcastItem(
                    time: '02:00',
                    icon: Icons.sunny,
                    tempereture: '83°',
                  ),
                  HourlyForcastItem(
                    time: '03:00',
                    icon: Icons.sunny,
                    tempereture: '84°',
                  ),
                  HourlyForcastItem(
                    time: '04:00',
                    icon: Icons.cloud,
                    tempereture: '89.4°',
                  ),
                  HourlyForcastItem(
                    time: '05:00',
                    icon: Icons.cloud,
                    tempereture: '88.3°',
                  ),
                  HourlyForcastItem(
                    time: '06:00',
                    icon: Icons.sunny,
                    tempereture: '84.2°',
                  ),
                ],
              ),
            ),
            //<==additional part==>
            const SizedBox(height: 20),
            Text(
              "Additional Information",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInfo(
                  icon: Icons.water_drop,
                  lable: "Humidity",
                  value: '94',
                ),
                AdditionalInfo(
                  icon: Icons.air,
                  lable: "Wind Speed",
                  value: "8.2",
                ),
                AdditionalInfo(
                  icon: Icons.beach_access,
                  lable: "Pressure",
                  value: '1000',
                ),
              ],
            ),
            //const Placeholder(fallbackHeight: 150),
          ],
        ),
      ),
    );
  }
}
