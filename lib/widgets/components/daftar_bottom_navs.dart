import 'package:flutter/material.dart';
import 'package:furnist_app/widgets/components/solid_btn.dart';
import 'package:get/get.dart';

class DaftarBottomNavs extends StatelessWidget {
  const DaftarBottomNavs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          SolidBtn(
            title: "Login",
            onTap: () {
              // Get.to("page");
            },
          ),
          Container(
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have any account ? "),
                GestureDetector(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  onTap: () {
                    print("Hello World");
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
