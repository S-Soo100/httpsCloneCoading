import 'package:flutter/material.dart';

class WebHeader extends StatelessWidget {
  double width;

  WebHeader({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (width >= 850) {
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
                  width <= 950
                      ? Row(
                          children: [
                            SizedBox(width: 10),
                            Text('자세히'),
                            Icon(Icons.arrow_drop_down)
                          ],
                        )
                      : Row(
                          children: [
                            Container(
                                width: 60.28,
                                alignment: Alignment.center,
                                child: Text('Surface')),
                            Container(
                                width: 46.91,
                                alignment: Alignment.center,
                                child: Text('Xbox')),
                            Container(
                                width: 44,
                                alignment: Alignment.center,
                                child: Text('지원'))
                          ],
                        )
                ],
              )
            ],
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                width: 120,
                child: Row(
                  children: [Text('Microsof 전체'), Icon(Icons.arrow_drop_down)],
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
                        Icons.shopping_cart_outlined,
                        size: 16.0,
                      ),
                      Icon(
                        Icons.circle_outlined,
                        size: 32.0,
                      )
                    ]),
              ),
            ],
          )
        ],
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 48,
              height: 48,
              alignment: AlignmentDirectional.center,
              child: Icon(Icons.menu),
            ),
            Container(
              width: 48,
              height: 48,
              alignment: AlignmentDirectional.center,
              child: Icon(Icons.search),
            )
          ],
        ),
        Container(
          alignment: Alignment.center,
          width: 137,
          height: 54,
          child: Image.network(
            'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE1Mu3b?ver=5c31',
            width: 108,
          ),
        ),
        Row(children: [
          Container(
            width: 48,
            height: 48,
            child: Icon(Icons.shopping_cart_outlined),
          ),
          Container(
            width: 48,
            height: 48,
            child: Icon(Icons.circle_outlined),
          )
        ]),
      ],
    );
  }
}
