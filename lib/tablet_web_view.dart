import 'package:flutter/material.dart';

class TabletWebHomePageView extends StatelessWidget {
  //const TabletWebHomePageView({ Key? key }) : super(key: key);

  final Widget appBar;
  final Size mediaQuerySize;

  const TabletWebHomePageView(this.appBar, this.mediaQuerySize);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        appBar,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: mediaQuerySize.height * 0.93,
              width: mediaQuerySize.width * 0.40,
              color: Colors.brown,
            ),
            
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: mediaQuerySize.height * 0.46,
                  width: mediaQuerySize.width * 0.59,
                  color: Colors.yellow,
                ),
                SizedBox(
                  height: mediaQuerySize.height * 0.01,
                ),
                Container(
                  height: mediaQuerySize.height * 0.46,
                  width: mediaQuerySize.width * 0.59,
                  color: Colors.grey,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
