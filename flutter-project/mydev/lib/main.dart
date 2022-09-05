import 'package:flutter/material.dart';
import 'login_page.dart';
import 'music_search_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}



//  Farklı sayfalar farklı dosyalara ayrılabilir?(Araştır)
//  Daha fazla müzik ekle         --------
//  Kişisel profil sayfası oluştur
//  Beğendiğin müzikler profilinde gözüksün .. (subject to change)
//  Müzik sözlerini kısa yolla hallet ? veya kaldır ?
//  slider eklemeye çalış müzik detay sayfasına          ++++
//  firebase ile giriş ve kayıt işlemleri         ++++++