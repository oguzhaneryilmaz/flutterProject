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
        title: Text(
          '${music.music_singer}' + '-' '${music.music_title}'.toString(),
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
              SizedBox(
                height: 30.0,
              )
              //slider
              ,
              const ProgressBar(
                progress: Duration(seconds: 5),
                total: Duration(seconds: 10),
                buffered: Duration(seconds: 7),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.play_arrow),
                    onPressed: () async {
                      await _player.setAsset(music.music_path.toString());
                      await _player.play();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.pause_circle_outline_rounded),
                    onPressed: () async {
                      await _player.pause();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.stop_circle_rounded),
                    onPressed: () async {
                      await _player.stop();
                    },
                  ),
                ],
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
