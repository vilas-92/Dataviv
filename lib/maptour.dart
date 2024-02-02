import 'package:flutter/material.dart';
import 'package:india_tour/tour360.dart';
import 'package:photo_view/photo_view.dart';
import 'delhimap.dart';

class maptour extends StatefulWidget {
  const maptour({super.key});

  @override
  State<maptour> createState() => _maptourState();
}

class _maptourState extends State<maptour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Delhimap()),
              );
            },
            child: Scrollbar(
                child: Container(
              child: PhotoView(
                imageProvider: AssetImage("images/Vector.jpg"),
              ),
            ))),
      ),
    );
  }
}
