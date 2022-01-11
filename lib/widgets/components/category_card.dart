import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryCard extends StatelessWidget {
  // const CategoryCard({ Key? key }) : super(key: key);

  // Init Params
  final Function()? onTap;
  final String title;
  final String url;

  CategoryCard({this.onTap, this.title = "", this.url = ""});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Get.height,
        alignment: Alignment.center,
        margin: EdgeInsets.all(5),
        child: Stack(
          children: [
            Container(
                width: 150,
                height: 70,
                child: Stack(
                  children: [
                    Image(image: AssetImage(url)),
                    Container(
                      color: Colors.black.withOpacity(0.7),
                    )
                  ],
                )),
            Positioned.fill(
                child: Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
