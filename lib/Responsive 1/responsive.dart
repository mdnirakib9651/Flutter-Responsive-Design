import 'package:flutter/material.dart';
import 'package:responsive/Responsive%201/tablerscreen.dart';
import 'package:responsive/Responsive%201/webscreen.dart';

import 'mobilescreen.dart';

class Responsive extends StatefulWidget {
  const Responsive({Key? key}) : super(key: key);

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constain){
      if(constain.maxWidth < 640){
        return MobileScreen();
      }
      else if(constain.maxWidth < 962){
        return TabletScreen();
      }
      return WebScreen();
    });
  }
}
