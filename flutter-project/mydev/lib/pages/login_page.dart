import 'package:mydev/pages/music_search_list.dart';

import 'forgot_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'register_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 166, 227, 244),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              //ana ekran ikonu
              SizedBox(
                height: 125,
              ),
              Icon(
                Icons.headset,
                size: 100,
                color: Colors.white,
              ),

              //hello again
              SizedBox(
                height: 25,
              ),
              Text(
                'Tekrar Merhaba!',
                style: GoogleFonts.bebasNeue(
                  fontSize: 60,
                  color: Color.fromARGB(255, 25, 80, 125),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Text(
                'Hoşgeldin Seni Özledik!',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 25, 80, 125),
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
                      color: Color.fromARGB(255, 25, 80, 125),
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.white)),
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
                      color: Color.fromARGB(255, 25, 80, 125),
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Şifre',
                          hintStyle: TextStyle(color: Colors.white)),
                      obscureText: true,
                    ),
                  ),
                ),
              ),

              TextButton(
                child: Text(
                  'Şifreni mi Unuttun?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 25, 80, 125),
                  ),
                ),
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ForgotPage())),
              ),

              //sign in button

              Column(
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MusicSearchList()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 75.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 3,
                              ),
                              color: Color.fromARGB(255, 25, 80, 125),
                              borderRadius: BorderRadius.circular(30)),
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          height: 50,
                          child: Center(
                            child: Text(
                              'Giriş Yap',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hesabın yok mu?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 25, 80, 125),
                    ),
                  ),
                  Center(
                    child: TextButton(
                      child: Text(
                        'Şimdi Kaydol!',
                        style: TextStyle(
                          color: Color.fromARGB(255, 25, 80, 125),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage())),
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
