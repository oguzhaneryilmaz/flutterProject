import 'package:mydev/model/music_model.dart';
import 'package:flutter/material.dart';
import 'package:mydev/searchBar.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // müzik dummy list

  static List<MusicModel> main_musics_list = [
    MusicModel(
      'Hayalin Yeri Yok',
      2015,
      9.2,
      'https://i.ytimg.com/vi/e26nfZ-tJv4/maxresdefault.jpg',
    ),
    MusicModel(
      'No Good',
      2018,
      8.9,
      'https://i.ytimg.com/vi/4KkKa1BIb14/maxresdefault.jpg',
    ),
  ];

  // görüntüleyip filtreleyeceğimiz liste

  List<MusicModel> display_list = List.from(main_musics_list);

  void updateList(String value) {
    //listeyi filtreleyecek olan fonksiyon

    setState(() {
      display_list = main_musics_list
          .where((element) =>
              element.music_title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F1545),
      appBar: AppBar(
        backgroundColor: Color(0xFF1F1545),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
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
              //sonuç gelmezse gelecek olan yazı fonksiyonu

              child: display_list.length == 0
                  ? Center(
                      child: Text(
                      'No Result Found',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ))

                  //---------------
                  : ListView.builder(
                      itemCount: display_list.length,
                      itemBuilder: (context, index) => ListTile(
                        contentPadding: EdgeInsets.all(8.0),
                        title: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 94, 78, 153)),
                          ),
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => LoginPage())),
                          child: Text(
                            display_list[index].music_title!,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        subtitle: Text(
                          '${display_list[index].music_release_year!}',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        trailing: Text(
                          "${display_list[index].rating}",
                          style: TextStyle(color: Colors.amber),
                        ),
                        leading:
                            Image.network(display_list[index].music_poster_url),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
