import 'package:flutter/material.dart';

class SubMenuBoxWidget extends StatelessWidget {
  SubMenuBoxWidget(
      {Key? key,
      required this.image,
      required this.title,
      required this.dialog,
      required this.isNew,
      required this.width,
      required this.buttonText})
      : super(key: key);

  final String image;
  final String title;
  final String dialog;
  double width;
  final bool isNew;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // width: width,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              image,
              width: width,
              alignment: Alignment.centerLeft,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: isNew == true
                  ? Container(
                      height: 28,
                      width: 68,
                      child: Text('신제품'),
                      alignment: AlignmentDirectional.center,
                      color: Colors.yellow[600],
                    )
                  : Container(
                      height: 28,
                    ),
            ),
            Text(
              title,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              dialog,
              textAlign: TextAlign.start,
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              width: 134.64,
              height: 39,
              child: Text(
                '$buttonText   >',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color.fromRGBO(18, 89, 146, 1)),
              ),
            ),
          ]),
    );
  }
}

class SmallMobileSubMenu extends StatelessWidget {
  SmallMobileSubMenu(
      {Key? key,
      required this.image,
      required this.title,
      required this.dialog,
      required this.isNew,
      required this.width,
      required this.buttonText})
      : super(key: key);

  final String image;
  final String title;
  final String dialog;
  double width;
  final bool isNew;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              image,
              width: width,
              alignment: Alignment.centerLeft,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2),
              child: isNew == true
                  ? Container(
                      margin: EdgeInsets.symmetric(vertical: 2),
                      height: 28,
                      width: 68,
                      child: Text('신제품'),
                      alignment: AlignmentDirectional.center,
                      color: Colors.yellow[600],
                    )
                  : Container(),
            ),
            Text(
              title,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              dialog,
              textAlign: TextAlign.start,
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              width: 134.64,
              height: 41,
              child: Text(
                '$buttonText   >',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color.fromRGBO(18, 89, 146, 1)),
              ),
            ),
          ]),
    );
  }
}
// Widget subMenuBoxWidget({
//   required String image,
//   required String title,
//   required String dialog,
//   required double width,
//   required bool isNew,
//   required String buttonText,
// }) {
//   return Expanded(
//     // width: width,
//     child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Image.network(
//             image,
//             width: width,
//             alignment: Alignment.centerLeft,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(vertical: 10),
//             child: isNew == true
//                 ? Container(
//                     height: 28,
//                     width: 68,
//                     child: Text('신제품'),
//                     alignment: AlignmentDirectional.center,
//                     color: Colors.yellow[600],
//                   )
//                 : Container(
//                     height: 28,
//                   ),
//           ),
//           Text(
//             title,
//             textAlign: TextAlign.start,
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           Text(
//             dialog,
//             textAlign: TextAlign.start,
//           ),
//           Container(
//             alignment: AlignmentDirectional.centerStart,
//             width: 134.64,
//             height: 39,
//             child: Text(
//               '$buttonText   >',
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 15,
//                   color: Color.fromRGBO(18, 89, 146, 1)),
//             ),
//           ),
//         ]),
//   );
// }
