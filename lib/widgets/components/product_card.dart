import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  // const ProductCard({Key? key}) : super(key: key);

  final String title;
  final int price;

  ProductCard({this.title = "", this.price = 0});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 150,
            child: Image(
              image: AssetImage('assets/categories/cat-1.png'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w800),
                        children: [
                      TextSpan(text: "\$ "),
                      TextSpan(text: "${price}")
                    ]))
              ],
            ),
          )
        ],
      ),
    );
  }
}
