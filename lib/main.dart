import 'package:flutter/material.dart';
import 'package:flutterportfolio/controller/navCtl.dart';
import 'package:flutterportfolio/home/app.dart';
import 'package:flutterportfolio/view/testPage.dart';
import 'package:get/get.dart';

void main() {
  // 컨트롤러 올리기
  Get.put(NavCtl());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // 홈화면 변경
      home: const App(),
    );
  }
}
