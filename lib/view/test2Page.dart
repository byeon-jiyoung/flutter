import 'package:flutter/material.dart';
import 'package:flutterportfolio/controller/testCtl.dart';
import 'package:get/get.dart';

class test2Page extends StatelessWidget {
  final String title;
  final TestCtl testCtl = Get.put(TestCtl());
  test2Page(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
          width: Get.size.width,
          child: NotificationListener(
            onNotification: (t) {
              if (t is ScrollUpdateNotification) {
                if (t.metrics.axis == Axis.vertical) {
                  if (t.metrics.extentAfter < 500 && !testCtl.isLoading.value) {
                    testCtl.addList();
                  }
                }
              }

              return true;
            },
            child: RefreshIndicator(
              onRefresh: () async {
                testCtl.reLoad();
              },
              child: Expanded(
                child: Obx(
                  () => ListView.separated(
                    itemCount: testCtl.test.length + 1,
                    separatorBuilder: (context, index) {
                      return Container(
                        width: Get.size.width,
                        height: 10,
                        color: Colors.black,
                      );
                    },
                    itemBuilder: (context, index) {
                      if (index < testCtl.test.length) {
                        return Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
                            width: Get.size.width,
                            height: 300,
                            color: Colors.green,
                            child: Text(
                              testCtl.test[index].toString(),
                              style: TextStyle(fontSize: 40),
                            ));
                      } else {
                        if (testCtl.isLoading.value) {
                          return Center(
                              child: Container(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator()));
                        }
                      }
                    },
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
