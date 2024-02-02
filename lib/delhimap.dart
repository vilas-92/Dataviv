import 'package:flutter/material.dart';
import 'package:india_tour/redfort.dart';
import 'package:photo_view/photo_view.dart';

class Delhimap extends StatefulWidget {
  const Delhimap({super.key});

  @override
  State<Delhimap> createState() => _DelhimapState();
}

class _DelhimapState extends State<Delhimap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => redfort()));
            },
            child: Scrollbar(
              child: Container(
                child: PhotoView(
                  imageProvider: AssetImage("images/delhi.jpg"),
                ),
              ),
            )),
      ),
    );
  }
}
