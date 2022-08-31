import 'package:flutter/material.dart';
import 'package:mydev/login_page.dart';
import 'package:mydev/model/music.dart';
import 'package:mydev/music_details.dart';

class MusicSearchList extends StatelessWidget {
  const MusicSearchList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Search Music'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.power_settings_new),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
        ),
        leadingWidth: 60,
      ),
      body: ListView.builder(
          itemCount: musicList.length,
          itemBuilder: (context, index) {
            Music music = musicList[index];
            return Card(
              child: ListTile(
                title: Text(music.music_title.toString()),
                subtitle: Text(music.music_release_year.toString()),
                leading: Image.network(music.music_poster_url.toString()),
                trailing: Icon(
                  Icons.arrow_forward_rounded,
                ),
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MusicDetailsScreen(music),
                    ),
                  );
                }),
              ),
            );
          }),
    );
  }
}
