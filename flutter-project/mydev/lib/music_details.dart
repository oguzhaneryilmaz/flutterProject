import 'package:flutter/material.dart';
import 'package:mydev/model/music.dart';

class MusicDetailsScreen extends StatelessWidget {
  final Music music;

  MusicDetailsScreen(this.music);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          music.music_title.toString(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                music.music_poster_url.toString(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  music.music_release_year.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 17.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  music.music_lyrics.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 17.0),
                ),
              ),
              IconButton(
                icon: Icon(Icons.play_arrow),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
