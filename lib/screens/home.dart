import 'package:flutter/material.dart';
import 'package:furnist_app/controller/category.dart';
import 'package:furnist_app/controller/product.dart';
import 'package:furnist_app/widgets/components/category_card.dart';
import 'package:furnist_app/widgets/components/product_card.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activePages = 1;
  // List<Widget> _categoryList = [];
  
   final category = Get.put(CategoryController());
  final product = Get.put(ProductController());


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
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Container(
                  height: 200,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                  )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
                child: Row(
                  children: [
                    Text(
                      'Categories',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    Spacer(),
                    Text('Show All'),
                  ],
                ),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.all(10),
                child: GetBuilder<CategoryController>(builder: (controller) {
                  return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.categoriesList.length,
                      itemBuilder: (context, index) => CategoryCard(
                            title: controller.categoriesList[index].title!,
                            url: controller.categoriesList[index].url!,
                          ));
                }
                ),
                // child: ListView(
                //   scrollDirection: Axis.horizontal,
                //   children:
                //       // CategoryCard(title: "Hello"), Buat Disini
                //       CategoryCard(title: data.categoriesList,);
                // ),
              ),

              // New Arival

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
                child: Row(
                  children: [
                    Text(
                      'New Arrivals',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    Spacer(),
                    Text('Show All'),
                  ],
                ),
              ),
              Container(
                height: 250,
                margin: EdgeInsets.all(10),
                child: GetBuilder<ProductController>(
                  builder: (controller) {
                    return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.productLists.length,
                      itemBuilder: (ctx, index) => ProductCard(
                        title: product.productLists[index].title!,
                        price: product.productLists[index].price!,
                      ),
                    );
                  },
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
                child: Row(
                  children: [
                    Text(
                      'New Arrivals',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    Spacer(),
                    Text('Show All'),
                  ],
                ),
              ),
              Container(
                height: 250,
                margin: EdgeInsets.all(10),
                child: GetBuilder<ProductController>(
                  builder: (controller) {
                    return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.productLists.length,
                      itemBuilder: (ctx, index) => ProductCard(
                        title: product.productLists[index].title!,
                        price: product.productLists[index].price!,
                      ),
                    );
                  },
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_rounded),
            title: Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_2_outlined),
            title: Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt_1_outlined),
            title: Text('Profile'),
          ),
        ],
        currentIndex: 2,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
