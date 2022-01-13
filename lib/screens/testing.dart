
import 'package:flutter/material.dart';
import 'package:furnist_app/widgets/detail_components/body_detail.dart';
import 'package:get/get.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Shopping Chart",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 150,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 150,
                      child: Image(
                        image: AssetImage('assets/detail.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                      height: 100,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Text(
                                  "Furnist Wooden Chair Astetic",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    "\$70",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800),
                                  ))
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Text(
                                  "color : blacky",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black26,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 25,
                                  height: 25,
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Center(
                                child: Text("1"),
                              )),
                              Expanded(
                                child: Container(
                                  width: 25,
                                  height: 25,
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Spacer()
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 150,
                      child: Image(
                        image: AssetImage('assets/detail.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 100,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Text("Loremipsum anjinggggg")),
                              Expanded(flex: 2, child: Text("Aloo"))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 150,
                      child: Image(
                        image: AssetImage('assets/detail.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 100,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Text("Loremipsum anjinggggg")),
                              Expanded(flex: 2, child: Text("Aloo"))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
message.txt
8 KB