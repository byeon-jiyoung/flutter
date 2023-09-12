import 'dart:async';
import 'package:get/get.dart';

class TestCtl extends GetxController {
  static TestCtl get to => Get.find();
  /*
  Getx에서는 상태관리 함수를 Rx를 붙여 사용한다.
  사용 예
  RxList<String> string = <String>[].obs;
  RxInt int = 0.obs;
  RxBool bool = false.obs; ...
  */

  // 버튼눌러 배경색 변경하는 함수
  RxInt buttonCount = 0.obs;
  void reset() {
    buttonCount.value = 0;
  }

  RxBool isRefresh = false.obs;
  RxBool isLoading = false.obs;
  RxList<String> stringList = <String>[].obs;

  RxInt indexCount = 0.obs;

  void onInit() {
    reLoad();
    super.onInit;
  }

  Future<void> reLoad() async {
    isRefresh.value = true;
    List<String> items = [];
    await Future.delayed(const Duration(seconds: 1), () {
      print('서버에서 데이터 받아오는 시간(예제)');
      // API발송 후 받아온 리스트가 JSON으로 들어온걸 디코딩하고어쩌고 한다음 메인 리스트로 리턴해준다고 생각하자!
      items = ['가', '나', '다', '라'];
    });
    stringList.value = items; // 해당 함수가 ReLoad 이므로 기존 리스트를 초기화하지말고 덮어써주도록 한다.
    indexCount.value = 0;
    isRefresh.value = false;
  }

  Future<void> moreGetList() async {
    isLoading.value = true;
    stringList.addAll(await moreList());
    isLoading.value = false;
  }

  Future<List<String>> moreList() async {
    List<String> items = [];
    if (indexCount.value < 3) {
      await Future.delayed(const Duration(seconds: 2), () {
        if (indexCount.value == 0) {
          items = ['마', '바', '사', '아'];
        } else if (indexCount.value == 1) {
          items = ['자', '차', '카', '타'];
        } else {
          items = ['파', '하'];
        }
        indexCount.value++;
      });
    }
    return items;
  }
}
