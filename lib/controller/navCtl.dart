import 'package:get/get.dart';

class NavCtl extends GetxController {
  static NavCtl get to => Get.find();

  RxInt navIndex = 0.obs;

  void changeNav(int value) {
    navIndex.value = value;
    print(value);
  }
}
