import 'package:flutter/material.dart';
import 'package:flutterportfolio/controller/navCtl.dart';
import 'package:flutterportfolio/home/communityPage.dart';
import 'package:get/get.dart';

class App extends GetView<NavCtl> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Obx(
          () => Stack(
            children: [
              Scaffold(
                body: IndexedStack(
                  index: controller.navIndex.value,
                  children: [
                    Container(),
                    CommunityPage(),
                    Container(),
                    Container(),
                    Container(),
                  ],
                ),
                bottomNavigationBar: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    currentIndex: controller.navIndex.value,
                    // 버튼선택시 호출되는 함수
                    onTap: controller.changeNav,
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.home,
                        ),
                        activeIcon: Icon(
                          Icons.home_outlined,
                        ),
                        label: '홈',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.description,
                        ),
                        activeIcon: Icon(
                          Icons.description_outlined,
                        ),
                        label: '동네생활',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.description,
                        ),
                        activeIcon: Icon(
                          Icons.description_outlined,
                        ),
                        label: '홈2',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.description,
                        ),
                        activeIcon: Icon(
                          Icons.description_outlined,
                        ),
                        label: '홈2',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.description,
                        ),
                        activeIcon: Icon(
                          Icons.description_outlined,
                        ),
                        label: '홈2',
                      ),
                    ]),
              ),
            ],
          ),
        ));
  }
}
