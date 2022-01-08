import 'package:flutter/material.dart';
import 'package:furnist_app/screens/onboard.dart';
import 'package:furnist_app/screens/register.dart';
import 'package:furnist_app/screens/welcome.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: OnboardPages(),
      debugShowCheckedModeBanner: false,
    );
  }
}
