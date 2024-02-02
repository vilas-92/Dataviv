import 'package:flutter/material.dart';
import 'package:india_tour/tour360.dart';
import 'package:photo_view/photo_view.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

class redfort extends StatefulWidget {
  const redfort({super.key});

  @override
  State<redfort> createState() => _redfortState();
}

class _redfortState extends State<redfort> {
  var alignment;
  void initState() {
    // TODO: implement initState

    // Play a sound as a one-shot, releasing its resources when it finishes playing.
    Audio.load('images/delhiau.mp3')
      ..play()
      ..dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(children: [
        Scrollbar(
          child: Container(
              child: PhotoView(
            imageProvider: AssetImage("images/redfort.png"),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const tour360(),
                      ));
                },
                child: const Text(
                  "Take Virtual Tour",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Back",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}
