import 'package:flutter/material.dart';
import 'package:mydev/pages/login_page.dart';
import 'package:mydev/model/music.dart';
import 'package:mydev/pages/music_details.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MusicSearchList extends StatefulWidget {
  const MusicSearchList({Key? key}) : super(key: key);

  @override
  State<MusicSearchList> createState() => _MusicSearchListState();
}

class _MusicSearchListState extends State<MusicSearchList> {
  static List<Music> dummyList = musicList;

  List<Music> display_list = List.from(dummyList);

  void updateList(String value) {
    setState(() {
      display_list = dummyList
          .where((element) =>
              element.music_title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Search for a Music',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFF302360),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: 'e.g. Fairy Tale',
                prefixIcon: Icon(
                  Icons.search,
                ),
                prefixIconColor: Colors.purple.shade900,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: display_list.length == 0
                  // ignore: prefer_const_constructors
                  ? Center(
                      child: const Text(
                      'No Result Found',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ))

                  //---------------
                  : ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: display_list.length,
                      itemBuilder: (context, index) {
                        Music music = display_list[index];
                        return Card(
                          child: ListTile(
                            title: Text(music.music_title.toString()),
                            subtitle: Text(music.music_release_year.toString()),
                            leading: Image.network(
                                music.music_poster_url.toString()),
                            trailing: Icon(
                              Icons.arrow_forward_rounded,
                            ),
                            onTap: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MusicDetailsScreen(music),
                                ),
                              );
                            }),
                          ),
                        );
                      }),
            ),
          ],
        ),
      ),
    );
  }
}
