import 'package:flutter/material.dart';

Widget BannerImageWidget(
    {required double width,
    required String image,
    required String title,
    required String dialog,
    required String buttonText,
    bool? whiteMode}) {
  return Container(
    width: width,
    child: Stack(
      // fit: StackFit.expand,
      alignment: AlignmentDirectional.centerStart,
      children: [
        Container(
          child: Image.network(image),
        ),
        Container(
          width: width,
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: whiteMode == null ? Colors.black : Colors.white,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Text(dialog,
                  style: TextStyle(
                      color: whiteMode == null ? Colors.black : Colors.white)),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Container(
                    alignment: AlignmentDirectional.center,
                    width: 134.64,
                    height: 40,
                    color: whiteMode == null ? Colors.black : Colors.white,
                    child: Text(
                      '$buttonText   >',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:
                              whiteMode == null ? Colors.white : Colors.black),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
