import 'package:flutter/material.dart';
import 'package:flutterportfolio/controller/testCtl.dart';
import 'package:get/get.dart';

class ListViewPage extends StatelessWidget {
  final String title;
  final TestCtl testCtl = Get.put(TestCtl());
  ListViewPage(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SizedBox(
          width: Get.size.width,
          /*
          해당 위젯은 스크롤 디텍션 혹은 여러가지 제스처에 대한 리스너로 사용됨
          적용된 방식은 세로 스크롤 감지한 뒤 최대 스크롤 길이보다 500픽셀 작을때 testCtl의 addList()함수를 실행한다.
          */
          child: NotificationListener(
            onNotification: (t) {
              if (t is ScrollUpdateNotification) {
                if (t.metrics.axis == Axis.vertical) {
                  if (t.metrics.extentAfter < 500 && !testCtl.isLoading.value) {
                    testCtl.moreGetList();
                  }
                }
              }
              return true;
            },
            /* 위로 당겨 새로고침을 할때 사용하는 위젯 */
            child: RefreshIndicator(
              onRefresh: () async {
                // 로딩값이 false (완료) 되어 있는 경우에만 리로드가 작동 되도록 한다.
                if (!testCtl.isLoading.value) {
                  testCtl.reLoad();
                }
              },

              /* 리스트뷰를 만드는 위젯으로 컨트롤러에 있는 인덱스 갯수 만큼 빌드가 돌악나다. */
              child: Obx(() {
                return testCtl.isRefresh.value
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        itemCount: testCtl.stringList.length + 1,
                        itemBuilder: (context, index) {
                          if (index < testCtl.stringList.length) {
                            return Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(10),
                                width: Get.size.width,
                                height: 200,
                                color: Colors.blueAccent,
                                child: Text(
                                  testCtl.stringList[index],
                                  style: const TextStyle(fontSize: 40),
                                ));
                          } else {
                            if (testCtl.isLoading.value) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            }
                          }
                          return null;
                        },
                      );
              }),
            ),
          )),
    );
  }
}
