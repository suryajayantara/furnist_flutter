import 'dart:developer';

import 'package:furnist_app/model/category_model.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  var categoriesList = <ModelCategory>[];

  void onInit() {
    getCategoryData();
    super.onInit();
  }

  void getCategoryData() {
    categoriesList.add(ModelCategory(
      title: "Sofa",
      url: 'assets/categories/cat-1.png',
    ));

    categoriesList.add(ModelCategory(
      title: "Cabinet",
      url: 'assets/categories/cat-2.png',
    ));

    categoriesList.add(ModelCategory(
      title: "Chair",
      url: 'assets/categories/cat-1.png',
    ));

    // Jika data sudah di isi , maka jalankan update
    update();
  }
}
