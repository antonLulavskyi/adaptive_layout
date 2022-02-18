import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

     var mediaQuerySize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            color: Colors.yellow,
            height: mediaQuerySize.height * 0.44,
            width: mediaQuerySize.width,
          ),
           SizedBox(
            height: mediaQuerySize.height * 0.01,
          ),
          Container(
            color: Colors.blueGrey,
            height: mediaQuerySize.height * 0.44,
            width: mediaQuerySize.width,
          ),
           SizedBox(
            height: mediaQuerySize.height * 0.01,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Text('f'),
          )
        ],
      ),
    );
  }
}
