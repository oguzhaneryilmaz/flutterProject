import 'package:flutter/material.dart';
import 'package:mydev/pages/login_page.dart';

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
