import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydev/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                'Hello Again!',
                style: GoogleFonts.bebasNeue(
                  fontSize: 60,
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Text(
                'Welcome back, you\'ve been missed!',
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
                          border: InputBorder.none, hintText: 'Password'),
                      obscureText: true,
                    ),
                  ),
                ),
              ),

              TextButton(
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                      color: Color(0xFF8D7688), fontWeight: FontWeight.bold),
                ),
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Homepage())),
              ),

              //sign in button

              Column(
                children: [
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF8D7688),
                          textStyle: const TextStyle(fontSize: 15)),
                      child: Text('Sign In'),
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Homepage())),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t you have an account?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: TextButton(
                      child: Text(
                        'Register now!',
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

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1EEDB),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'daaamn',
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginPage())),
                child: Text('Login page i aç'))
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
                  'Registration Page',
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
                            border: InputBorder.none, hintText: 'Nickname'),
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
                            border: InputBorder.none, hintText: 'Password'),
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
                            border: InputBorder.none,
                            hintText: 'Password Again'),
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
                        'Register',
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
                    Text(
                      'Turn back to',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Login Page',
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


// müzikler ve müzisyenler eklenecek
// search bar yapılacak
// veritabanı bağlantısı? yapılacak
