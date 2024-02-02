import 'package:flutter/material.dart';


class Delhimap extends StatefulWidget {
  const Delhimap({super.key});

  @override
  State<Delhimap> createState() => _DelhimapState();
}

class _DelhimapState extends State<Delhimap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
        child: Image.asset("images/delhi.jpg"),
      ),),
    );
  }
}