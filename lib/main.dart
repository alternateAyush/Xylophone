import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playNote(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded keyNote(int x, Color a) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playNote(x);
        },
        child: Container(
          color: a,
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true,
          title: Text('Xylophone'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                keyNote(1, Colors.blue),
                keyNote(2, Colors.green),
                keyNote(3, Colors.yellow),
                keyNote(4, Colors.purple),
                keyNote(5, Colors.red),
                keyNote(6, Colors.orange),
                keyNote(7, Colors.pink),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
