import 'package:flutter/material.dart';

class ResFooterWidget extends StatelessWidget {
  ResFooterWidget({
    Key? key,
    required this.resWidth,
    required this.width,
  }) : super(key: key);

  final double resWidth;
  double width;

  @override
  Widget build(BuildContext context) {
    if (width >= 850) {
      return Container(
        height: 80,
        width: resWidth,
        color: Colors.grey[200],
        alignment: Alignment.center,
        child: Container(
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: Row(
                children: [
                  Icon(Icons.language),
                  SizedBox(
                    width: 6,
                  ),
                  Text('한국어(대한민국)'),
                ],
              )),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('Microsoft에 문의'),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(' 개인정보처리방침 및 위치정보이용약관'),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('사용약관'),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('상표'),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('광고 정보'),
                  ),
                  Container(
                    child: Text('@ Microsoft 2022'),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    } else if (width >= 600) {
      return Container(
        width: resWidth,
        color: Colors.grey[200],
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.language),
                SizedBox(
                  width: 6,
                ),
                Text(
                  '한국어(대한민국)',
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    'Microsoft에 문의',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    ' 개인정보처리방침 및 위치정보이용약관',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    '사용약관',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    '상표',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    '광고 정보',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Container(
                  child: Text(
                    '@ Microsoft 2022',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      );
    }
    return Container(
      width: resWidth,
      color: Colors.grey[200],
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.language),
              SizedBox(
                width: 6,
              ),
              Text(
                '한국어(대한민국)',
                style: TextStyle(fontSize: 13),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  'Microsoft에 문의',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  ' 개인정보처리방침 및 위치정보이용약관',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  '사용약관',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  '상표',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  '광고 정보',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Container(
                child: Text(
                  '@ Microsoft 2022',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
