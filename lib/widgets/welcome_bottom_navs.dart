import 'package:flutter/material.dart';
import 'package:furnist_app/widgets/components/outline_btn.dart';
import 'package:furnist_app/widgets/components/solid_btn.dart';

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
          ),
          OutlineBtn(title: 'Register'),
        ],
      ),
    );
  }
}
