import 'dart:async';

import 'package:flutter/material.dart';

import 'delhimap.dart';
import 'maptour.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => maptour(),
          ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: 200,
        height: 200,
        child: Image.asset("images/Loading_Gif.gif"),
      ),
    ));
  }
}
