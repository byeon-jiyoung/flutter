import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterportfolio/model/communityModel.dart';
import 'package:get/get.dart';

class CommunityCtl extends GetxController {
  static CommunityCtl get to => Get.find();

  static List<communityModel> modelList = [];
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

  List<String> subtitleString = ['순서가', '맞도록', '내용을', '넣어', '보자'];

  void createModel(String title, String subtitle) {
    communityModel tmpModel = communityModel();
    //tmpModel.detail = subtitle;
    tmpModel.title = title;

    modelList.add(tmpModel);
  }

  void createTitle(String title, IconData icon) {
    communityModel tmpTitle = communityModel();
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