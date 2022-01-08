import 'package:flutter/material.dart';
import 'package:furnist_app/screens/login.dart';
import 'package:furnist_app/screens/register.dart';
import 'package:furnist_app/widgets/components/outline_btn.dart';
import 'package:furnist_app/widgets/components/solid_btn.dart';
import 'package:get/get.dart';

class WelcomeBottomNavs extends StatelessWidget {
  const WelcomeBottomNavs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          SolidBtn(
            title: 'Login',
            onTap: () {
              Get.to(() => LoginPage());
            },
          ),
          OutlineBtn(
            title: 'Register',
            onTap: () {
              Get.to(() => RegisterPage());
            },
          ),
          
        ],
        
      ),
    );
  }
}
