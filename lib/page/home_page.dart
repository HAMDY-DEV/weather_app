import 'package:flutter/material.dart';
import 'package:weather_app/page/searsh_page.dart';
import 'package:weather_app/service/weather_service.dart';
import 'package:weather_app/widgets/image_text.dart';
import '../widgets/custom_location.dart';
import '../widgets/hour_weather.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF29B2DD),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Column(
          children: [
             Row(
              children: [
                GestureDetector(
                  onTap: (){


                    WeatherService().getWeather();
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SearchPage();
                    },));


                  },
                  child: const Image(
                    image: AssetImage('assets/images/icons/frame.png'),
                    width: 40,
                    height: 40,
                  ),
                ),

                SizedBox(width: 10,),

                CustomLocation('Cairo'),

              ],
            ),
            const Column(
              children: [
                Image(
                  image: AssetImage('assets/images/sun_cloud_angled_rain.png'),
                  width: 200,
                  height: 200,
                ),
                Text(
                  '30º',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 50,
                  ),
                ),
                Text(
                  'Precipitations',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Max.: 34º   Min.: 28º',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 40,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.black38,
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  ImageText('assets/images/icons/rain.png', '18%'),
                  const Spacer(
                    flex: 3,
                  ),
                  ImageText('assets/images/icons/temperature.png', '67%'),
                  const Spacer(
                    flex: 3,
                  ),
                  ImageText('assets/images/icons/wind_speed.png', '25km/h'),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              // height: 160,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.black38,
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        'Today',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Text(
                        'Mar,10',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HourWeather(
                          '31', 'assets/images/icons/sunset.png', '15:00'),
                      HourWeather('30', 'assets/images/icons/sun.png', '16:00'),
                      HourWeather(
                          '28', 'assets/images/icons/clouds.png', '17:00'),
                      HourWeather(
                          '28', 'assets/images/icons/night.png', '18:00'),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
