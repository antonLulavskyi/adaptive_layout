import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  //const Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.yellow,
            height: constraints.maxHeight,
            width: constraints.maxWidth,
          ),
        );
      }),
    );
  }
}
