import 'dart:math';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  //debugPaintLayerBordersEnabled = true;
  //debugPaintBaselinesEnabled = true;
  runApp(MaterialApp(home: MyHomePage(title: "HELLO NOBODY")));
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int leftDaceNumber = 1;
  int rightDaceNumber = 2;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Center(
            child: Row(
              children: [
                /// Daice Left
                Expanded(
                  child: FlatButton(
                    child: Image.asset("assets/daice$leftDaceNumber.png"),
                    onPressed: () {
                      setState(() {
                        leftDaceNumber = Random().nextInt(6) + 1;
                      });
                    },
                  ),
                ),

                /// Daice Right
                Expanded(
                  child: FlatButton(
                    child: Image.asset("assets/daice$rightDaceNumber.png"),
                    onPressed: () {
                      setState(() {
                        rightDaceNumber = Random().nextInt(6) + 1;
                      });
                    },
                  ),
                ),

                /// Cat
                Expanded(
                  child: Image.asset("assets/cat.png"),
                  
                ),
              ],
            ),
          ),
        ));
  }
}
