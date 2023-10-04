import 'package:flutter/material.dart';
import 'package:flutterportfolio/view/generalPage.dart';
import 'package:flutterportfolio/view/listViewPage.dart';

import 'package:get/get.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InkWell menuBar(Icon icon, String name, {Widget? widgetPage}) {
      return InkWell(
        onTap: () {
          if (widgetPage != null) {
            Get.to(() => widgetPage);
          }
        },
        child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Row(
              children: [
                Container(child: icon),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                const Spacer(),
                const SizedBox(
                    child: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ))
              ],
            )),
      );
    }

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: const Text(
            '설정',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
      body: Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          color: const Color(0x11000000),
          child: ListView(
            children: [
              menuBar(const Icon(Icons.hourglass_bottom), '버튼 테스트 페이지',
                  widgetPage: GeneralPage('버튼 상태관리')),
              const SizedBox(height: 20),
              menuBar(const Icon(Icons.settings_applications_sharp), '리스트뷰 페이지',
                  widgetPage: ListViewPage('리스트뷰')),
              menuBar(const Icon(Icons.accessibility), '손쉬운 사용'),
              menuBar(const Icon(Icons.back_hand), '개인정보 보호 및 보안'),
              const SizedBox(height: 20),
              menuBar(const Icon(Icons.key), '암호'),
              const SizedBox(height: 20),
              menuBar(const Icon(Icons.explore), 'Safari'),
              menuBar(const Icon(Icons.feed), 'News'),
              menuBar(const Icon(Icons.g_translate), '번역'),
              menuBar(const Icon(Icons.map_outlined), '지도'),
              menuBar(const Icon(Icons.backup_table), '단축어'),
              menuBar(const Icon(Icons.favorite), '건강'),
              menuBar(const Icon(Icons.travel_explore), 'Siri 및 검색'),
              menuBar(const Icon(Icons.image), '사진'),
              menuBar(const Icon(Icons.sports_esports), 'Game Center'),
            ],
          )),
    );
  }
}
