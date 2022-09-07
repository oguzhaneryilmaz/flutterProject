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
                    child: TextField(
                      controller: emailController,
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
                    child: TextField(
                      controller: passwordController,
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
                      onPressed: signIn,
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
