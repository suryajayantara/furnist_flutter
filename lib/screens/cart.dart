import 'package:flutter/material.dart';
import 'package:furnist_app/widgets/components/cart_card.dart';
import 'package:furnist_app/widgets/components/solid_btn.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: GestureDetector(
            child: Icon(
          Icons.arrow_back,
          color: Colors.black,
        )),
        title: Text(
          'Shopping Chart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: ListView(
              children: [
                CartCard(),
                Divider(),
                CartCard1(),
                Divider(),
                CartCard(),
                Divider(),
                CartCard(),
                Divider(),
                CartCard(),
                Divider(),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                child: Column(
                  children: [
                    Divider(),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "SubTotal",
                                  style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text("\$8989",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700))
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: SolidBtn(
                            title: "Checkout",
                          ),
                        )
                      ],
                    )
                  ],
                ),
                height: 100,
                width: Get.width,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
