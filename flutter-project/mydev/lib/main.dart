import 'package:flutter/material.dart';
import 'main_page.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
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