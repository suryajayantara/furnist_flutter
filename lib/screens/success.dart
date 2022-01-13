import 'package:flutter/material.dart';
import 'package:furnist_app/widgets/components/solid_btn.dart';
import 'package:get/get.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .center, // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Image(
                image: AssetImage('assets/succes.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Thank You !',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              width: 350,
              padding: EdgeInsets.all(50),
              child: Center(
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        children: [
                          TextSpan(text: 'Your order'),
                          TextSpan(
                              text: '#2506',
                              style: TextStyle(fontWeight: FontWeight.w700)),
                          TextSpan(
                              text:
                                  ' is completed. Please check the delivery status for monitoring your order')
                        ])),
              ),
            ),
            Container(
              width: 300,
              height: 60,
              child: SolidBtn(
                title: "Continue Shoppingg",
              ),
            )
            // SolidBtn(
            //   title: "Continue Shoppinggg",
            // )
          ],
        ),
      ),
    );
  }
}
