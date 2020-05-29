import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("XyloPhone"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _customBtn("note1.wav",Colors.red),
                _customBtn("note2.wav",Colors.green),
                _customBtn("note3.wav",Colors.yellow),
                _customBtn("note4.wav",Colors.pink),
                _customBtn("note5.wav",Colors.lime),
                _customBtn("note6.wav",Colors.purple),
                _customBtn("note7.wav",Colors.orange),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _customBtn(String sound,Color color) {

    return Expanded(
          child: FlatButton(
          onPressed: () {
            final player = AudioCache();
            player.play(sound);
          },
          color: color,
          child: Text("Click Me"),),
    );
  }
}
