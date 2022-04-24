import 'package:flutter/material.dart';

Widget BannerImageWidget(
    {required double width,
    required String image,
    required String title,
    required String dialog,
    required String buttonText,
    required bool multibanner,
    bool? whiteMode}) {
  return Container(
    width: width,
    child: Stack(
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
        multibanner == true
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Opacity(
                    opacity: 0.7,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 0.5, color: Colors.grey.shade800),
                          borderRadius: BorderRadius.circular(22),
                          color: Colors.grey.shade200),
                      width: 44,
                      height: 44,
                      child: Icon(Icons.arrow_back_ios_rounded),
                    ),
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 0.5, color: Colors.grey.shade800),
                          borderRadius: BorderRadius.circular(22),
                          color: Colors.grey.shade200),
                      width: 44,
                      height: 44,
                      child: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                ],
              )
            : Container()
      ],
    ),
  );
}

class MobileBannerImageWidget extends StatelessWidget {
  MobileBannerImageWidget({
    required this.width,
    required this.image,
    required this.title,
    required this.dialog,
    required this.buttonText,
    required this.multibanner,
    this.whiteMode,
    Key? key,
  }) : super(key: key);

  double width;
  String image;
  String title;
  String dialog;
  String buttonText;
  bool multibanner;
  bool? whiteMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Column(
            children: [
              Container(
                child: Image.network(image),
              ),
              Container(
                alignment: AlignmentDirectional.center,
                color: whiteMode == null
                    ? Colors.grey.shade200
                    : Color.fromARGB(255, 59, 59, 59),
                height: 320,
                width: width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: whiteMode == null ? Colors.black : Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Container(
                      width: width * 0.8,
                      child: Text(dialog,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: whiteMode == null
                                  ? Colors.black
                                  : Colors.white)),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Container(
                      alignment: AlignmentDirectional.center,
                      width: 134.64,
                      height: 40,
                      color: whiteMode == null ? Colors.black : Colors.white,
                      child: Text(
                        '$buttonText   >',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: whiteMode == null
                                ? Colors.white
                                : Colors.black),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          multibanner == true
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.5, color: Colors.grey.shade800),
                            borderRadius: BorderRadius.circular(22),
                            color: Colors.grey.shade200),
                        width: 44,
                        height: 44,
                        child: Icon(Icons.arrow_back_ios_rounded),
                      ),
                    ),
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.5, color: Colors.grey.shade800),
                            borderRadius: BorderRadius.circular(22),
                            color: Colors.grey.shade200),
                        width: 44,
                        height: 44,
                        child: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ),
                  ],
                )
              : Container()
        ],
      ),
    );
  }
}
