import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';

class tour360 extends StatefulWidget {
  const tour360({super.key});

  @override
  State<tour360> createState() => _tour360State();
}

class _tour360State extends State<tour360> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Panorama(
          child: Image.asset('images/redfort360.jpg'),
        ),

        // child: Scrollbar(  child: Container(child: PhotoView(
        //         imageProvider: AssetImage("images/redfort360.jpg"),
        //       ),),)
      ),
    );
  }
}
