import 'package:flutter/material.dart';
import 'package:furnist_app/widgets/components/daftar_bottom_navs.dart';
import 'package:furnist_app/widgets/register_bottom_navs.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Text(
                      'Register',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                  ),
                  //username
                  TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                            right: 20,
                          ),
                          child: Icon(
                            Icons.account_box_rounded,
                            color: Colors.black,
                          ),
                        ),
                        hintText: "UserName",
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black.withOpacity(0.5))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                  //email
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
                                color: Colors.black.withOpacity(0.5))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                  //password
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
                                color: Colors.black.withOpacity(0.5))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                  //phone
                  TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                            right: 20,
                          ),
                          child: Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),
                        ),
                        hintText: "Handphone",
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black.withOpacity(0.5))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ],
              ),
            ),
          ),
          // Container(

          Container(
            // color: Colors.red,
            height: 250,
            child: Center(
              // alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [DaftarBottomNavs()],
                // children: [SolidBtn()],
              ),
            ),
          )
        ],
      ),
    );
  }
}
