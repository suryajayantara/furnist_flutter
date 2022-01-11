import 'package:furnist_app/model/category_model.dart';
import 'package:furnist_app/model/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var productLists = <ProductModel>[];

  void onInit() {
    getProduct();
    super.onInit();
  }

  void getProduct() {
    productLists.add(ProductModel(title: "Wooden Chair", price: 30));
    productLists.add(ProductModel(title: "Decorative Lights", price: 30));
    productLists.add(ProductModel(title: "Orange Moped", price: 30));

    update();
  }
}
