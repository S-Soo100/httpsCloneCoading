import 'package:flutter/material.dart';

class FooterListWidget extends StatelessWidget {
  final List<String> list;
  FooterListWidget({Key? key, required List<String> this.list})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 200,
              child: Text(
                '${list[index]}',
                style: TextStyle(
                    fontWeight:
                        index == 0 ? FontWeight.bold : FontWeight.normal,
                    fontSize: index == 0 ? 18 : 14),
              ),
            );
          }),
    );
  }
}
