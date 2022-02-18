
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveButton extends StatelessWidget {
  
   const AdaptiveButton({required this.child, required this.onPressed});

  final Widget child;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? CupertinoButton(child: child, onPressed: () {}) : ElevatedButton(onPressed: () {}, child: child) ;
   }
}