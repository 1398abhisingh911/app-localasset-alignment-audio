import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ABHI APP'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              width: 200,
              height: 250,
              child: Card(
                  color: Colors.blue, //child:Text('Body'),
                  child: Image.asset('images/GG.jpg'),
                  elevation: 5),
            ),
            Container(
              color: Colors.redAccent,
              width: 100,
              height: 250,
              child: Card(
                child: RaisedButton(
                  child: Text('HI'),
                  onPressed: () {
                    var g = AudioCache();
                    g.play('assets/A.wav');
                    print('hi');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
