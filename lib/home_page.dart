import 'package:adaptive_layout/AdaptiveButton.dart';
import 'package:adaptive_layout/mobile_wiew.dart';
import 'package:adaptive_layout/tablet_web_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var mediaQuerySize = MediaQuery.of(context).size;

    //print('Height of the window: ${mediaQuerySize.height} Width of the window: ${mediaQuerySize.width}');

    // App Bar
    var appBar = SizedBox(
            child: Card(
              margin: const EdgeInsets.only(bottom: 8),
              elevation: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  ),
                  const Text('Adaptive Layout'),
                   (mediaQuerySize.height < 860 || mediaQuerySize.width > 800) ? IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                  ) : const SizedBox(
                  ),
                ],
              ),
            ),
          );

    return mediaQuerySize.width < 800 ? MobileHomeView(appBar, mediaQuerySize) : TabletWebHomePageView(appBar, mediaQuerySize);
  }
}
