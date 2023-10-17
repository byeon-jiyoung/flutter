import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterportfolio/controller/boradCtl.dart';
import 'package:flutterportfolio/controller/communityCtl.dart';
import 'package:flutterportfolio/controller/testCtl.dart';
import 'package:flutterportfolio/model/communityModel.dart';
import 'package:get/get.dart';

class CommunityPage extends StatelessWidget {
  CommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              //color: Colors.red,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
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
                        Spacer(),
                        Container(
                          width: 100,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.account_circle_outlined),
                              Icon(Icons.search),
                              Icon(Icons.notifications_outlined)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      shrinkWrap: true,
                      /*
                      for (int idx = 0; i < CommunityCtl.titleList.length; i++){
                        
                       }
                       이거랑 같다고 보면 됩니다.
                       따라서 idx 0번과 1번에만 아이콘이 들어가야하니 
                       for (int idx = 0; i < CommunityCtl.titleList.length; i++){
                          if (idx < 2){
                           아이콘 리스트[idx]
                         }
                         글자 리스트[idx]
                       }
                       형식으로 만들어주면되는거지요
                      */

                      // itemCount: 3, // 테스트용 코드
                      itemCount: CommunityCtl.titleList.length,
                      itemBuilder: (BuildContext ctx, int idx) {
                        // return CommunityCtl.testWidget[idx]; // 테스트용 코드
                        return InkWell(
                          onTap: () {
                            print(CommunityCtl.titleList[idx]);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            // margin: const EdgeInsets.only(right: 10), // 오른쪽만 주면 터치영역이 어색해져요
                            // margin: const EdgeInsets.only(left: 5, right:5), // 이렇게 줘도됩니다.
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(40)),
                            child: Row(
                              children: [
                                /*
                                  만약 아래와 같은 형식이 싫다고 한다면
                                  위에 만들어둔 테스트용 코드 주석 해제해서 한번 돌려보세용
                                  이런 방법도 있답니다 :) 
                                */
                                if (idx < 2) // idx 리스트가 2보다 작을때 (0번째 1번째)
                                  Icon(
                                    CommunityCtl
                                        .titleIconList[idx], // 0번과 1번 리스트만 들어감
                                    size: 15,
                                    color: idx == 0 ? Colors.black : Colors.red,
                                  ),
                                Text(CommunityCtl.titleList[idx])
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Divider(height: 0, thickness: 1),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        itemCount: boardCtl.boardList.length,
                        itemBuilder: (BuildContext ctx, int idx) {
                          return Container(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 2, horizontal: 10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.black12),
                                        child: Text(boardCtl.boardList[idx]
                                            ['division']),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          boardCtl.boardList[idx]['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          boardCtl.boardList[idx]['contents'],
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              boardCtl.boardList[idx]['area'],
                                              style:
                                                  const TextStyle(fontSize: 12),
                                            ),
                                            const Text('・'),
                                            Text(
                                              boardCtl.boardList[idx]['date'],
                                              style:
                                                  const TextStyle(fontSize: 12),
                                            ),
                                            const Text('・'),
                                            Text(
                                              '조회' +
                                                  boardCtl.boardList[idx]
                                                      ['readCnt'],
                                              style:
                                                  const TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        child: Row(
                                          children: [
                                            if (boardCtl.boardList[idx]
                                                    ['assentCnt'] !=
                                                '0')
                                              const Icon(
                                                Icons.thumb_up_outlined,
                                                color: Colors.black45,
                                                size: 20,
                                              ),
                                            if (boardCtl.boardList[idx]
                                                    ['assentCnt'] !=
                                                '0')
                                              Text(
                                                boardCtl.boardList[idx]
                                                    ['assentCnt'],
                                                style: const TextStyle(
                                                    fontSize: 12),
                                              ),
                                            if (boardCtl.boardList[idx]
                                                    ['commentCnt'] !=
                                                '0')
                                              const Icon(
                                                Icons.chat_bubble_outline,
                                                color: Colors.black45,
                                                size: 20,
                                              ),
                                            if (boardCtl.boardList[idx]
                                                    ['commentCnt'] !=
                                                '0')
                                              Text(
                                                boardCtl.boardList[idx]
                                                    ['commentCnt'],
                                                style: const TextStyle(
                                                    fontSize: 12),
                                              ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const Divider(height: 0, thickness: 1)
                              ],
                            ),
                          );
                        },
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
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.deepOrange),
                  child: const Row(
                    children: [
                      Icon(Icons.add, color: Colors.white),
                      Text(
                        '글쓰기',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
