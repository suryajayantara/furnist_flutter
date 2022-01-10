import 'package:flutter/material.dart';
import 'package:furnist_app/widgets/welcome_bottom_navs.dart';
import 'package:get/get.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: Get.height,
                  width: Get.width,
                  child: Image(
                    image: AssetImage('assets/theme/onboarding-1.png'),
                    alignment: Alignment.center,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                    top: 100,
                    child: Column(
                      children: [
                        Image(image: AssetImage('assets/icon.png')),
                      ],
                    )),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                        Colors.white.withOpacity(0.5),
                        Colors.transparent
                      ])),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: WelcomeBottomNavs(),
                )
              ],
        )
          ],
        ),
      ),
    );
  }
}
