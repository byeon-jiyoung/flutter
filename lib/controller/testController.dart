import 'dart:async';

import 'package:get/get.dart';

class TestController extends GetxController {
  static TestController get to => Get.find();

  RxInt buttonCount = 0.obs;
  RxInt ttt = 0.obs;
  void reset() {
    buttonCount.value = 0;
    Timer.periodic(Duration(milliseconds: 1), (Timer timer) {
      ttt.value = ttt.value + 1;
    });
  }
}
