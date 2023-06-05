import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    My_app(),
  );
}

// ignore: camel_case_types, must_be_immutable
class My_app extends StatelessWidget {
  int counter = 1;
  Expanded mybutton(int counter, String button_text) {
    final player = AudioPlayer();
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: const Icon(Icons.audiotrack),
            color: Colors.black,
            onPressed: () {},
          ),
          TextButton(
            child: Text(
              button_text,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              player.setVolume(0.9999);

              player.play(AssetSource('$counter.mp3'));
            },
          ),
          IconButton(
            icon: const Icon(Icons.pause),
            color: Colors.black,
            onPressed: () {
              player.stop();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: const Text(
            ' hello ',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            mybutton(1, 'بحبك أنـا 2014'),
            mybutton(2, 'music_name'),
            mybutton(3, 'بعدك_عم_تخطر_على_بالي'),
            mybutton(4, 'music_name'),
            mybutton(5, 'music_name'),
            mybutton(6, ' ما_نقدر_نرد'),
            mybutton(7, 'music_name'),
            mybutton(8, 'music_name'),
          ],
        ),
      ),
    );
  }
}
