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
                    const CommunityPage(),
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
                        icon: Icon(Icons.home_outlined),
                        activeIcon: Icon(Icons.home),
                        label: '홈',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.description_outlined),
                        activeIcon: Icon(Icons.description),
                        label: '동네생활',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.location_on_outlined),
                        activeIcon: Icon(Icons.location_on),
                        label: '내 근처',
                      ),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.forum_outlined),
                          activeIcon: Icon(Icons.forum),
                          label: '채팅'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.person_outline),
                          activeIcon: Icon(Icons.person),
                          label: '나의 당근'),
                    ]),
              ),
            ],
          ),
        ));
  }
}
