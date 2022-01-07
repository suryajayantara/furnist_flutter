import 'package:flutter/material.dart';

class OutlineBtn extends StatelessWidget {
  // const OutlineButton({Key? key}) : super(key: key);

  final String title;

  OutlineBtn({this.title = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0.0, bottom: 10.0, left: 20.0, right: 20.0),
      height: 55,
      decoration: BoxDecoration(
          color: Colors.transparent, border: Border.all(color: Colors.black)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
