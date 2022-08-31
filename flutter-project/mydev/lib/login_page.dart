import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydev/main.dart';
import 'package:mydev/music_search_list.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1EEDB),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              //ana ekran ikonu
              SizedBox(
                height: 125,
              ),
              Icon(Icons.headset, size: 100),

              //hello again
              SizedBox(
                height: 25,
              ),
              Text(
                'Tekrar Merhaba!',
                style: GoogleFonts.bebasNeue(
                  fontSize: 60,
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Text(
                'Hoşgeldin Seni Özledik!',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

              SizedBox(
                height: 20,
              ),

              //email textfield

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFD9B4A3),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Email'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //password textfield

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFD9B4A3),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Şifre'),
                      obscureText: true,
                    ),
                  ),
                ),
              ),

              TextButton(
                child: Text(
                  'Şifreni mi Unuttun?',
                  style: TextStyle(
                      color: Color(0xFF8D7688), fontWeight: FontWeight.bold),
                ),
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ForgotPage())),
              ),

              //sign in button

              Column(
                children: [
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF8D7688),
                          textStyle: const TextStyle(fontSize: 15)),
                      child: Text('Giriş Yap'),
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => MusicSearchList())),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hesabın yok mu?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: TextButton(
                      child: Text(
                        'Şimdi Kaydol!',
                        style: TextStyle(
                            color: Color(0xFF8D7688),
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => RegisterPage())),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class ForgotPage extends StatefulWidget {
  const ForgotPage({Key? key}) : super(key: key);

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  String textHolder = '';
  void changeData() {
    setState(() {
      textHolder = 'İlgili adrese mail gönderildi';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1EEDB),
      appBar: AppBar(
        title: Text("Stateful"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Şifresini unuttuğunuz hesabın \nmail adresini girin',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFD9B4A3),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Email'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$textHolder',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFF8D7688),
                  textStyle: const TextStyle(fontSize: 15)),
              child: Text('Mail Gönder'),
              onPressed: changeData,
            ),
            TextButton(
                onPressed: (() => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    )),
                child: Text(
                  'Giriş Sayfasına Dön',
                  style: TextStyle(
                    color: Color(0xFF8D7688),
                    fontWeight: FontWeight.bold,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1EEDB),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 125,
                ),

                //register icon field

                Icon(
                  Icons.app_registration_rounded,
                  size: 100,
                ),
                //registration page post

                Text(
                  'Kayıt Sayfası',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),

                //register nickname field
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFD9B4A3),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Kullanıcı Adın'),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                //register password field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFD9B4A3),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Şifre'),
                        obscureText: true,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFD9B4A3),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Tekrar Şifre'),
                        obscureText: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                //register email field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFD9B4A3),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Email'),
                      ),
                    ),
                  ),
                ),
                //register button

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ElevatedButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage())),
                      child: Text(
                        'Kaydol',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF8D7688),
                          textStyle: const TextStyle(fontSize: 15))),
                ),
                // turn back to login page
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text(
                        'Giriş Sayfasına Dön',
                        style: TextStyle(
                            color: Color(0xFF8D7688),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage())),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
