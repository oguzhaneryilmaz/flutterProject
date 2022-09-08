import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydev/model/music.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class MusicDetailsScreen extends StatelessWidget {
  final AudioPlayer _player = AudioPlayer();
  final Music music;
  MusicDetailsScreen(this.music);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 25, 80, 125),
        title: Text(
          '${music.music_singer}' + '-' '${music.music_title}'.toString(),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 166, 227, 244),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                music.music_poster_url.toString(),
              ),
              SizedBox(
                height: 30.0,
              )
              //slider
              ,
              const ProgressBar(
                progress: Duration(seconds: 5),
                total: Duration(seconds: 10),
                buffered: Duration(seconds: 7),
                progressBarColor: Color.fromARGB(255, 25, 80, 125),
                thumbColor: Color.fromARGB(255, 38, 123, 192),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 25, 80, 125),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.play_arrow,
                          size: 36,
                          color: Colors.white,
                        ),
                        onPressed: () async {
                          await _player.setAsset(music.music_path.toString());
                          await _player.play();
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.pause_circle_outline_rounded,
                          size: 36,
                          color: Colors.white,
                        ),
                        onPressed: () async {
                          await _player.pause();
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.stop_circle_rounded,
                          size: 36,
                          color: Colors.white,
                        ),
                        onPressed: () async {
                          await _player.stop();
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${music.music_singer}' +
                      '-' '${music.music_title}'.toString(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.aBeeZee(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                music.music_release_year.toString(),
                style: TextStyle(
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
