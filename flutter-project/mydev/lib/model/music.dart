import 'package:flutter/material.dart';

//veri model sınıfı

class Music {
  String? music_title;
  int? music_release_year;
  String? music_lyrics;
  String? music_poster_url;

  Music({
    @required this.music_title,
    @required this.music_release_year,
    this.music_lyrics,
    @required this.music_poster_url,
  });
}

List<Music> musicList = [
  Music(
    music_title: 'Hayalin Yeri Yok',
    music_release_year: 2015,
    music_lyrics: 'hayalin yeri yok şarkı sözleri',
    music_poster_url: 'https://i.ytimg.com/vi/e26nfZ-tJv4/maxresdefault.jpg',
  ),
  Music(
    music_title: 'No Good',
    music_release_year: 2018,
    music_lyrics: 'no good şarkı sözleri',
    music_poster_url: 'https://i.ytimg.com/vi/4KkKa1BIb14/maxresdefault.jpg',
  ),
];
