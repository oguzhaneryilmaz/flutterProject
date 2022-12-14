import 'package:flutter/material.dart';
import 'package:mydev/firebase_options.dart';
import 'main_page.dart';
import 'package:firebase_core/firebase_core.dart' as eos;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await eos.Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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



//  Daha fazla müzik ekle         --------
//  Kişisel profil sayfası oluştur
//  slider eklemeye çalış müzik detay sayfasına          ++++
//  firebase ile giriş ve kayıt işlemleri         ++++++