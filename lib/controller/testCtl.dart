import 'dart:async';

import 'package:get/get.dart';

class TestCtl extends GetxController {
  static TestCtl get to => Get.find();

  RxString buttonText = '버튼이 눌러졌을까?'.obs;

  RxBool button = false.obs;
  RxInt counter = 0.obs;
  RxInt colorVal = 3.obs;
  RxBool isLoading = false.obs;
  RxList<int> test = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 10, 11, 12, 23].obs;
  void reLoad() {
    test.value = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 10, 11, 12, 23];
  }

  Future<void> addList() async {
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 1), () {
      List<int> item = [
        1,
        2,
      ];
      test.addAll(item);
    });

    isLoading.value = false;
  }
}
