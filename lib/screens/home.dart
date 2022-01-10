import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activePages = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Container(
            margin: EdgeInsets.all(20),
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              title: Text(
                "Find Best Furniture For Your Home",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
                maxLines: 2,
              ),
              actions: [
                SizedBox(
                  width: 100,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Expanded(
                  flex: 1,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: Get.width,
                        child: Stack(
                          children: [
                            Image(
                              image:
                                  AssetImage('assets/carousel/carousel-1.png'),
                              fit: BoxFit.fitWidth,
                              width: Get.width,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20.0, bottom: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 180,
                                    child: Text(
                                      'Weekend Sale Discount up to',
                                      style: TextStyle(fontSize: 20),
                                      maxLines: 2,
                                    ),
                                  ),
                                  Container(
                                    width: 180,
                                    child: Text(
                                      '70%',
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.w900),
                                      maxLines: 2,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        height: 200,
                      ),
                      Container(
                        width: Get.width,
                        child: Stack(
                          children: [
                            Image(
                              image:
                                  AssetImage('assets/carousel/carousel-1.png'),
                              fit: BoxFit.fitWidth,
                              width: Get.width,
                            )
                          ],
                        ),
                        height: 200,
                      ),
                      Container(
                        width: Get.width,
                        child: Stack(
                          children: [
                            Image(
                              image:
                                  AssetImage('assets/carousel/carousel-1.png'),
                              fit: BoxFit.fitWidth,
                              width: Get.width,
                            )
                          ],
                        ),
                        height: 200,
                      ),
                    ],
                  ),
                )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
              child: Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  Text('Show All'),
                ],
              ),
            ),
            Container(
              height: 90,
              margin: EdgeInsets.all(10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/carousel/carousel-1.png'))),
                    child: Center(child: Text('Hello')),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
