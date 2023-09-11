import 'package:flutter/material.dart';
import 'package:flutterportfolio/controller/testController.dart';
import 'package:get/get.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final TestController controller = Get.put(TestController());
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
      body: Obx(
        () => Container(
          padding: const EdgeInsets.all(10),
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
