import 'package:flutter/material.dart';
import 'login_page.dart';
import 'search_bar_page.dart';

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
//  Daha fazla müzik ekle
//  Müziklere tıkladığımızda müziğe ait sayfayı aç !!!
//  Kişisel profil sayfası oluştur
//  Beğendiğin müzikler profilinde gözüksün .. (subject to change)