import 'package:flutter/material.dart';

class OnboardPV extends StatelessWidget {
  // const OnboardPV({ Key? key }) : super(key: key);

  final String imgUrl;
  final String title;
  final String desc;

  OnboardPV({this.imgUrl = "", this.title = "", this.desc = ""});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      alignment: Alignment.center,
      children: [
        Image(
          width: double.infinity,
          image: AssetImage(imgUrl),
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.white.withOpacity(0.5), Colors.transparent])),
        ),
        Container(
          margin: EdgeInsets.only(top: 200.0),
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  desc,
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
