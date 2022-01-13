import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  const CartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 100,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: 150,
              child: Image(
                image: AssetImage(
                  'assets/carousel/carousel-1.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
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
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                          flex: 2,
                          child: Text(
                            "\$70",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w800),
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
                      Spacer(),
                      Expanded(
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(color: Colors.black),
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
                          decoration: BoxDecoration(color: Colors.black),
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
