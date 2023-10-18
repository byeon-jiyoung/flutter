import 'package:get/get.dart';

class BoardCtl extends GetxController {
  static BoardCtl get to => Get.find();

  static Map map1 = {
    'division': '일상',
    'title': '나 가슴이 아퍼요ㅠㅠ',
    'contents': '나 아퍼요ㅠㅠ 가슴이 막 아퍼요 왜 그런거죠? 동네병원 가서 물어 보니 어처구니 없는 말을 하네요.',
    'area': '신암4동',
    'date': '5시간 전',
    'readCnt': '209',
    'assentCnt': '0',
    'commentCnt': '8'
  };

  static Map map2 = {
    'division': '일상',
    'title': '강뚝 산책하는데 뱀봤네요',
    'contents': '여기살면서 처음 보네요.',
    'area': '방촌동',
    'date': '2시간 전',
    'readCnt': '82',
    'assentCnt': '2',
    'commentCnt': '4'
  };

  static Map map3 = {
    'division': '일상',
    'title': '그냥 웃어요',
    'contents':
        '여자 세명이 죽어서 염라대왕 앞으로 갔다. 첫번째 여자 "전 결혼전에도 처녀였고 결혼후에도 남편만 알고 살았습니다."라고',
    'area': '입석동',
    'date': '9시간 전',
    'readCnt': '193',
    'assentCnt': '1',
    'commentCnt': '7'
  };

  static Map map4 = {
    'division': '생활정보',
    'title': '길거리 음식 붕어빵',
    'contents': '세개 천원',
    'area': '효목2동',
    'date': '8시간 전',
    'readCnt': '82',
    'assentCnt': '0',
    'commentCnt': '0'
  };

  static Map map5 = {
    'division': '일상',
    'title': '불금 밤 금호강 둔치',
    'contents': '괜스레 강물을 보고도 그리운 마음은 때로는 차 한잔에도 짙은 그리움을 마시게 한다.',
    'area': '동촌동',
    'date': '3일 전',
    'readCnt': '377',
    'assentCnt': '4',
    'commentCnt': '6'
  };

  static Map map6 = {
    'division': '동네질문',
    'title': '동촌 노래방',
    'contents': '동촌에 온 지 8개월이 다 되어가는데 노래방 없나요?',
    'area': '검사동',
    'date': '1일 전',
    'readCnt': '211',
    'assentCnt': '0',
    'commentCnt': '3'
  };

  static Map map7 = {
    'division': '취미생활',
    'title': '테니스 같이 배우실 분 있나요',
    'contents': '신천동 블루힐 실내 테니스 장에서 2:1로 수강하실 분 있나요?',
    'area': '동촌동',
    'date': '1일 전',
    'readCnt': '89',
    'assentCnt': '0',
    'commentCnt': '3'
  };

  static List<Map> boardList = [map1, map2, map3, map4, map5, map6, map7];
}
