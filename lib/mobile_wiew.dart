import 'package:flutter/material.dart';

class MobileHomeView extends StatelessWidget {
  
  final Widget appBar;
  final Size mediaQuerySize;

  MobileHomeView(this.appBar, this.mediaQuerySize);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          appBar,
          Container(
            color: Colors.yellow,
            height:  (mediaQuerySize.height > 465) ? mediaQuerySize.height * 0.42 : mediaQuerySize.height * 0.75,
            width: mediaQuerySize.width,
          ),
          SizedBox(
            height: mediaQuerySize.height * 0.01,
          ),
          if (mediaQuerySize.height > 465) Container(
            color: Colors.grey,
            height: (mediaQuerySize.height ) * 0.42,
            width: mediaQuerySize.width,
          ),
          SizedBox(
            height: mediaQuerySize.height * 0.01,
          ),
          if (mediaQuerySize.height > 860) FloatingActionButton(
            onPressed: () {},
            child: const Text('+'),
          )
        ],
      ),
    );
  }
}