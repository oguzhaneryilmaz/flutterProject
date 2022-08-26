//veri model sınıfı

class MusicModel {
  String? music_title;
  int? music_release_year;
  double? rating;
  String music_poster_url;

  MusicModel(
    this.music_title,
    this.music_release_year,
    this.rating,
    this.music_poster_url,
  );
}
