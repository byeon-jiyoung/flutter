import 'package:flutter/material.dart';
import 'package:flutterportfolio/model/communityModel.dart';
import 'package:get/get.dart';

class CommunityCtl extends GetxController {
  static CommunityCtl get to => Get.find();

  static List<CommunityModel> modelList = [];
  static List<String> titleList = [
    '주제',
    '인기글',
    '동네맛집',
    '동네질문',
    '동네소식',
    '생활정보',
    '취미생활',
    '일상',
    '분실/실종센터',
    '동네사건사고',
    '해주세요',
    '동네사진전'
  ];

  static List<IconData> titleIconList = [
    Icons.menu,
    Icons.local_fire_department
  ];

  /*
  view창에서 사용할 위젯을 리스트형식으로 만들어서 가져다 쓸 수도 있습니다.
  view 페이지로 옮겨서 사용해도 무관합니다
  */
  static List<Widget> testWidget = [
    Row(
      children: [
        Icon(CommunityCtl.titleIconList[0], size: 15, color: Colors.black),
        Text(CommunityCtl.titleList[0])
      ],
    ),
    Row(
      children: [
        Icon(CommunityCtl.titleIconList[1], size: 15, color: Colors.black),
        Text(CommunityCtl.titleList[1])
      ],
    ),
    Text(titleList[2]),
  ];

  void createModel(String title, String subtitle) {
    CommunityModel tmpModel = CommunityModel();
    //tmpModel.detail = subtitle;
    tmpModel.title = title;

    modelList.add(tmpModel);
  }

  void createTitle(String title, IconData icon) {
    CommunityModel tmpTitle = CommunityModel();
    tmpTitle.title = title;
    tmpTitle.icon = icon;

    modelList.add(tmpTitle);
  }

  void makeList() {
    modelList.clear();

    for (int i = 0; i < titleList.length; i++) {
      createTitle(titleList[i], titleIconList[i]);
    }
  }
}

// 이런 느낌으로 제작 뒤 위젯에서
// model[index].title, model[index].subtitle 이런식으로 가져옴
