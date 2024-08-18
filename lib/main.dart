import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  void playmusic(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('music-$num.mp3'));
  }

  Expanded myButton(
      {int musicNumber = 1,
      Color buttonColor = Colors.black,
      String buttonText = 'iPhone 11'}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white,
          child: TextButton(
            onPressed: () {
              playmusic(musicNumber);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.music_note,
                    color: buttonColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    buttonText,
                    style: TextStyle(
                      fontSize: 20,
                      color: buttonColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text("Music"),
        ),
        body: Column(
          children: [
            myButton(
                musicNumber: 1,
                buttonColor: Colors.red,
                buttonText: 'Samsung Galaxy'),
            myButton(
                musicNumber: 2,
                buttonColor: Colors.green,
                buttonText: 'Samsung Note'),
            myButton(
                musicNumber: 3, buttonColor: Colors.black, buttonText: 'Nokia'),
            myButton(
                musicNumber: 4,
                buttonColor: Colors.orange,
                buttonText: 'iPhone 11'),
            myButton(
                musicNumber: 5,
                buttonColor: Colors.blue,
                buttonText: 'Whatsapp'),
            myButton(
                musicNumber: 6,
                buttonColor: Colors.purple,
                buttonText: 'Samsung S7'),
            myButton(
                musicNumber: 7,
                buttonColor: Colors.black,
                buttonText: 'iPhone 6'),
          ],
        ),
      ),
    );
  }
}
