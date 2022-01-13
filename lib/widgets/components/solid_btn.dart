import 'package:flutter/material.dart';

class SolidBtn extends StatelessWidget {
  // const SolidBtn({ Key? key }) : super(key: key);
  final String title;
  final Function()? onTap;
  final EdgeInsetsGeometry? margin;
  SolidBtn({this.title = "Helo", this.onTap, this.margin});
  @override


  
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // margin: EdgeInsets.only(top: 0.0, bottom: 10.0, left: 20.0, right: 20.0),

        margin: margin ??
            EdgeInsets.only(top: 0.0, bottom: 10.0, left: 20.0, right: 20.0),
        height: 55,
        decoration: BoxDecoration(color: Colors.black),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
