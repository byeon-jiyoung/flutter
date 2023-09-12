import 'package:flutter/material.dart';
import 'package:flutterportfolio/controller/testCtl.dart';
import 'package:get/get.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final TestCtl controller = Get.put(TestCtl());
  GeneralPage(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      // 상태변경을 원하는 위젯을 Obx로 감싸 Rx함수를 바로 가져올 수 있도록 적용한다.
      body: Obx(
        () => Container(
          padding: const EdgeInsets.all(10),
          // 0일때는 반응없음, 5번누를때 마다 뒷 배경색을 바꾼다.
          color: controller.buttonCount.value != 0 &&
                  controller.buttonCount.value % 5 == 0
              ? Colors.amber
              : Colors.white,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('버튼을${controller.buttonCount}번 눌렀습니다.'),
              ElevatedButton(
                  onPressed: () {
                    controller.buttonCount.value++;
                  },
                  child: Text('증가버튼')),
              ElevatedButton(
                  onPressed: controller.buttonCount.value != 0
                      ? () {
                          controller.reset();
                        }
                      : null,
                  child: Text('리셋버튼'))
            ],
          ),
        ),
      ),
    );
  }
}
