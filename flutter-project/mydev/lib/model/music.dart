import 'package:flutter/material.dart';

//veri model sınıfı

class Music {
  String? music_title;
  int? music_release_year;
  String? music_singer;
  String? music_poster_url;
  String? music_path;

  Music({
    @required this.music_title,
    @required this.music_release_year,
    this.music_singer,
    @required this.music_poster_url,
    @required this.music_path,
  });
}

List<Music> musicList = [
  Music(
    music_title: 'Hayalin Yeri Yok',
    music_release_year: 2012,
    music_singer: 'Allame',
    music_poster_url: 'https://i.ytimg.com/vi/e26nfZ-tJv4/maxresdefault.jpg',
    music_path: 'assets/hayalinyeriyok.mp3',
  ),
  Music(
    music_title: 'No Good',
    music_release_year: 2015,
    music_singer: 'KALEO',
    music_poster_url: 'https://i.ytimg.com/vi/4KkKa1BIb14/maxresdefault.jpg',
    music_path: 'assets/nogood.mp3',
  ),
  Music(
    music_title: 'Diamonds',
    music_release_year: 2012,
    music_singer: 'Rihanna',
    music_poster_url:
        'https://static.billboard.com/files/media/rihanna-diamond-vid-still-2016-billboard-1548-compressed.jpg',
    music_path: 'assets/diamonds.mp3',
  ),
  Music(
    music_title: 'El Aman',
    music_release_year: 2021,
    music_singer: 'maNga',
    music_poster_url:
        'https://t2.genius.com/unsafe/303x303/https%3A%2F%2Fimages.genius.com%2Fa23b9d4237ca9f0178cfa56268e20347.1000x1000x1.png',
    music_path: 'assets/elaman.mp3',
  ),
  Music(
    music_title: 'Landing In London',
    music_release_year: 2005,
    music_singer: '3 Doors Down',
    music_poster_url:
        'https://c.wallhere.com/photos/6b/90/3_doors_down_guitars_field_sun_look-790568.jpg!d',
    music_path: 'assets/landinginlondon.mp3',
  ),
  Music(
    music_title: 'Smoke In The Water',
    music_release_year: 1972,
    music_singer: 'Deep Purple',
    music_poster_url:
        'https://onlinebasscourses.com/wp-content/uploads/2020/03/Smoke-on-the-water-bass-transcription.png',
    music_path: 'assets/smokeinthewater.mp3',
  ),
  Music(
    music_title: 'Cennet',
    music_release_year: 2019,
    music_singer: 'Ebru Gündeş',
    music_poster_url:
        'https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/40/2c/9b/402c9b26-f5de-9cb7-19ab-8c1550015622/cover.jpg/1200x1200bf-60.jpg',
    music_path: 'assets/cennet.mp3',
  ),
  Music(
    music_title: 'Senden Daha Güzel',
    music_release_year: 2009,
    music_singer: 'Duman',
    music_poster_url: 'https://pbs.twimg.com/media/CxzTsDeXUAAr8mW.jpg:large',
    music_path: 'assets/sendendahagüzel.mp3',
  ),
  Music(
    music_title: 'One',
    music_release_year: 1988,
    music_singer: 'Metallica',
    music_poster_url: 'https://i.ytimg.com/vi/36RuWFhBz8U/maxresdefault.jpg',
    music_path: 'assets/one.mp3',
  ),
  Music(
    music_title: 'Geççek',
    music_release_year: 2022,
    music_singer: 'Tarkan',
    music_poster_url: 'https://pbs.twimg.com/media/FK6VveQXsAAhpxG.jpg',
    music_path: 'assets/geççek.mp3',
  ),
];
