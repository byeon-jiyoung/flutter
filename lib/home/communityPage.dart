import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              // color: Colors.red,
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      height: 50,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Container(
                            // color: Colors.blue,
                            child: const Row(
                              children: [
                                Text(
                                  '입석동',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Icon(Icons.expand_more),
                              ],
                            ),
                          ),
                          // 간격벌리기
                          const Spacer(),
                          Container(
                              // color: Colors.amber,
                              width: 100,
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.account_circle_outlined),
                                  Icon(Icons.search),
                                  Icon(Icons.notifications_outlined)
                                ],
                              ))
                        ],
                      )),
                  Container(
                      height: 50,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Icon(Icons.account_circle_outlined),
                          Icon(Icons.search),
                          Icon(Icons.notifications_outlined),
                          Icon(Icons.account_circle_outlined),
                          Icon(Icons.search),
                          Icon(Icons.notifications_outlined),
                          Icon(Icons.account_circle_outlined),
                          Icon(Icons.search),
                          Icon(Icons.notifications_outlined),
                          Icon(Icons.account_circle_outlined),
                          Icon(Icons.search),
                          Icon(Icons.notifications_outlined),
                          Icon(Icons.account_circle_outlined),
                          Icon(Icons.search),
                          Icon(Icons.notifications_outlined),
                          Icon(Icons.account_circle_outlined),
                          Icon(Icons.search),
                          Icon(Icons.notifications_outlined),
                          Icon(Icons.account_circle_outlined),
                          Icon(Icons.search),
                          Icon(Icons.notifications_outlined),
                          Icon(Icons.account_circle_outlined),
                          Icon(Icons.search),
                          Icon(Icons.notifications_outlined),
                        ],
                      )),
                  Divider(height: 0, thickness: 1),
                  Expanded(
                    child: Container(
                      // color: Colors.amber,
                      child: ListView(
                        children: [
                          Icon(Icons.account_circle_outlined),
                          Icon(Icons.search),
                          Icon(Icons.notifications_outlined),
                          Icon(Icons.account_circle_outlined),
                          Icon(Icons.search),
                          Icon(Icons.notifications_outlined),
                          Icon(Icons.account_circle_outlined),
                          Icon(Icons.search),
                          Icon(Icons.notifications_outlined),
                          Icon(Icons.account_circle_outlined),
                          Icon(Icons.search),
                          Icon(Icons.notifications_outlined),
                          Icon(Icons.account_circle_outlined),
                          Icon(Icons.search),
                          Icon(Icons.notifications_outlined),
                          Icon(Icons.account_circle_outlined),
                          Icon(Icons.search),
                          Icon(Icons.notifications_outlined),
                          Icon(Icons.account_circle_outlined),
                          Icon(Icons.search),
                          Icon(Icons.notifications_outlined),
                          Icon(Icons.account_circle_outlined),
                          Icon(Icons.search),
                          Icon(Icons.notifications_outlined),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: InkWell(
                onTap: () {
                  print('글쓰기');
                },
                child: Container(
                    height: 30,
                    color: Colors.blue,
                    child: Text(
                      '+ 글 쓰 기',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
