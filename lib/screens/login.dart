import 'package:flutter/material.dart';
import 'package:furnist_app/widgets/register_bottom_navs.dart';
import 'package:get/get.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
          height: Get.height,
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                width: Get.width,
                height: Get.height,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 30.0),
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w700),
                              ),
                            ),
                            TextFormField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(20.0),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(
                                      right: 20,
                                    ),
                                    child: Icon(
                                      Icons.email_outlined,
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: "Email",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Colors.black.withOpacity(0.5))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ),
                            TextFormField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(20.0),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(
                                      right: 20,
                                    ),
                                    child: Icon(
                                      Icons.lock_outline,
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: "Password",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Colors.black.withOpacity(0.5))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 30),
                                      child: Text(
                                        'Forgot Password ?',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    onTap: () {
                                      print('Forget Berfungsi!');
                                    },
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [RegisterBottomNavs()],
                        ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
