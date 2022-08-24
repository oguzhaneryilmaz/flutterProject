import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            //ana ekran ikonu

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
                    color: Colors.grey[200],
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
                    color: Colors.grey[200],
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
            SizedBox(
              height: 20,
            ),

            //sign in button

            Column(
              children: [
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    child: Text('Sign In'),
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Homepage())),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Center(
                  child: TextButton(
                    child: Text('Register now!'),
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
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'bura kayıt olma sayfası',
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
