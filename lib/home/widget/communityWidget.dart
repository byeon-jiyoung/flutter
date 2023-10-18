import 'package:flutter/material.dart';
import 'package:flutterportfolio/controller/boradCtl.dart';

class CommunityWidget extends StatelessWidget {
  final int idx;
  const CommunityWidget({
    required this.idx,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizedBox createTime(
        {required String area, required String date, required String readCnt}) {
      return SizedBox(
        child: Row(
          children: [
            Text(
              area,
              style: const TextStyle(fontSize: 12),
            ),
            const Text('・'),
            Text(
              date,
              style: const TextStyle(fontSize: 12),
            ),
            const Text('・'),
            Text(
              '조회 $readCnt',
              style: const TextStyle(fontSize: 12),
            )
          ],
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.black12),
            child: Text(BoardCtl.boardList[idx]['division']),
          ),
          Container(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              BoardCtl.boardList[idx]['title'],
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            BoardCtl.boardList[idx]['contents'],
            overflow: TextOverflow.ellipsis,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                createTime(
                    area: BoardCtl.boardList[idx]['area'],
                    date: BoardCtl.boardList[idx]['date'],
                    readCnt: BoardCtl.boardList[idx]['readCnt']),
                Row(
                  children: [
                    if (BoardCtl.boardList[idx]['assentCnt'] != '0')
                      Row(
                        children: [
                          const Icon(
                            Icons.thumb_up_outlined,
                            color: Colors.black45,
                            size: 20,
                          ),
                          Text(
                            BoardCtl.boardList[idx]['assentCnt'],
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    if (BoardCtl.boardList[idx]['commentCnt'] != '0' &&
                        BoardCtl.boardList[idx]['assentCnt'] != '0')
                      const SizedBox(
                        width: 5,
                      ),
                    if (BoardCtl.boardList[idx]['commentCnt'] != '0')
                      Row(
                        children: [
                          const Icon(
                            Icons.chat_bubble_outline,
                            color: Colors.black45,
                            size: 20,
                          ),
                          Text(
                            BoardCtl.boardList[idx]['commentCnt'],
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
