import 'package:flutter/material.dart';
import 'package:furnist_app/widgets/components/solid_btn.dart';
import 'package:get/get.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  int? selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onTap: () {}),
        title: Text(
          "Checkout",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  child: Column(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
                        child: Row(
                          children: [
                            Text(
                              'Shipping To',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20),
                            ),
                            Spacer(),
                            Text('Details'),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        // color: Colors.black,
                        height: 200,
                        width: Get.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          margin: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Home",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Cameron Williamson",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey[500]),
                                    ),
                                    Text(
                                      "(684) 555-0102",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey[500]),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "4517 Washington Ave. Manchester, Kentucky 39495",
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 2.0, horizontal: 30.0),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 20.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Shipping To',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                  Spacer(),
                                  Text('Details'),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Image(
                                    image:
                                        AssetImage('assets/icon/master.png')),
                                Container(
                                  margin: EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "Credit Card",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Spacer(),
                                Radio(
                                    activeColor: Colors.black,
                                    value: 1,
                                    groupValue: selectedRadio,
                                    onChanged: (val) {
                                      setRadio(1);
                                    }),
                              ],
                            ),
                            Row(
                              children: [
                                Image(
                                    image:
                                        AssetImage('assets/icon/paypal.png')),
                                Container(
                                  margin: EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "PayPal",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Spacer(),
                                Radio(
                                    activeColor: Colors.black,
                                    value: 2,
                                    groupValue: selectedRadio,
                                    onChanged: (val) {
                                      setRadio(2);
                                    }),
                              ],
                            ),
                            Row(
                              children: [
                                Image(
                                    image: AssetImage('assets/icon/apple.png')),
                                Container(
                                  margin: EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "Apple Pay",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Spacer(),
                                Radio(
                                    activeColor: Colors.black,
                                    value: 3,
                                    groupValue: selectedRadio,
                                    onChanged: (val) {
                                      setRadio(3);
                                    }),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Divider(
                          thickness: 2,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sub Total",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "\$100",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Shipping Fee",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "\$10",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Grand Total",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.grey[400]),
                                      ),
                                      Text(
                                        "\$100",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900),
                                      )
                                    ],
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: SolidBtn(
                                    title: "Confirm Order",
                                    onTap: () {},
                                    margin: EdgeInsets.all(0),
                                  )),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
