import 'package:flutter/material.dart';

class WebHeader extends StatelessWidget {
  WebHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: 137,
              height: 54,
              child: Image.network(
                'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE1Mu3b?ver=5c31',
                width: 108,
              ),
            ),
            Row(
              children: [
                Container(
                    width: 97.16,
                    alignment: Alignment.center,
                    child: Text('Microsoft 365')),
                Container(
                    width: 51.89,
                    alignment: Alignment.center,
                    child: Text('Office')),
                Container(
                    width: 70.84,
                    alignment: Alignment.center,
                    child: Text('Windows')),
                Container(
                    width: 60.28,
                    alignment: Alignment.center,
                    child: Text('Surface')),
                Container(
                    width: 46.91,
                    alignment: Alignment.center,
                    child: Text('Xbox')),
                Container(
                    width: 44, alignment: Alignment.center, child: Text('지원'))
              ],
            )
          ],
        ),
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: 144.14,
              child: Row(
                children: [Text('Microsof 전체'), Icon(Icons.swipe_down)],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 126,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.search,
                      size: 16.0,
                    ),
                    Icon(
                      Icons.shopping_cart,
                      size: 16.0,
                    ),
                    Icon(
                      Icons.usb_rounded,
                      size: 32.0,
                    )
                  ]),
            )
          ],
        )
      ],
    );
  }
}
