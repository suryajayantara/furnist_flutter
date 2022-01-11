import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  // const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                elevation: 0.0,
                pinned: true,
                backgroundColor: Colors.white,
                expandedHeight: MediaQuery.of(context).size.height * 0.350,
                leading: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                title: Center(
                  child: Text(
                    'Detail Product',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                actions: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.black,
                    ),
                  )
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Image(
                    image: AssetImage('assets/carousel/detail-1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.grey[300],
                  ),
                  height: 900,
                  child: Container(
                    margin: EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Set Chair & Tables Astetic",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(vertical: 10.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[700],
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[700],
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[700],
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[700],
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[700],
                                        ),
                                        Text(
                                          "5.0",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              flex: 5,
                            ),
                            Expanded(
                              child: Text(
                                "\$ 40",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w700),
                              ),
                              flex: 1,
                            )
                          ],
                        ),
                        Text(
                          "Astetic chair and work table package, very attractive design, using quality sturdy materials that are environmentally friendly. These chairs and tables are designed for those of you who like simple and minimalist concepts, ready to accompany your day to be more productive.",
                          maxLines: 12,
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 10.0),
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(35)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 10.0),
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius:
                                              BorderRadius.circular(35)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 10.0),
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          color: Colors.brown[500],
                                          borderRadius:
                                              BorderRadius.circular(35)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 10.0),
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          color: Colors.brown[200],
                                          borderRadius:
                                              BorderRadius.circular(35)),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration:
                                            BoxDecoration(color: Colors.black),
                                        child: Center(
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 35,
                                        width: 35,
                                        child: Center(
                                          child: Text("1"),
                                        ),
                                      ),
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration:
                                            BoxDecoration(color: Colors.black),
                                        child: Center(
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                )
              ]))
            ],
          ),
          Positioned(
              bottom: 0,
              child: Container(
                // color: Colors.red,
                height: 100,
                width: Get.width,
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 3)),
                            child: Icon(Icons.signal_wifi_4_bar_lock_outlined),
                          )),
                      Expanded(
                          flex: 4,
                          child: Container(
                            height: 100,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            color: Colors.black,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_bag_outlined,
                                    color: Colors.white),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Add To Chart",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
