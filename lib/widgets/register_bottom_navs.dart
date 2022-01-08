import 'package:flutter/material.dart';
import 'package:furnist_app/widgets/components/outline_btn.dart';
import 'package:furnist_app/widgets/components/solid_btn.dart';

class RegisterBottomNavs extends StatelessWidget {
  const RegisterBottomNavs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          SolidBtn(
            title: "Login",
            onTap: () {
              print('OKay');
            },
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0, bottom: 30.0),
            child: Text(
              'or continue with',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            ),
          ),
          OutlineBtn(
            title: "Google",
            onTap: () {
              print('OKay');
            },
          ),
          OutlineBtn(
            title: "Facebook",
            onTap: () {
              print('OKay');
            },
          ),
          Container(
            child: RichText(
              text: TextSpan(children: [
                TextSpan(text: "Don't have any account ?"),
                TextSpan(
                    text: "Sign Up",
                    style: TextStyle(fontWeight: FontWeight.w500)),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
