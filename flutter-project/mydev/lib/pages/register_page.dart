import 'package:flutter/material.dart';
import 'package:mydev/pages/login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 166, 227, 244),
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
                  color: Colors.white,
                ),
                //registration page post

                Text(
                  'Kayıt Sayfası',
                  style: TextStyle(
                    color: Color.fromARGB(255, 25, 80, 125),
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
                        border: Border.all(
                          width: 3,
                          color: Colors.white,
                        ),
                        color: Color.fromARGB(255, 25, 80, 125),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Kullanıcı Adın',
                            hintStyle: TextStyle(color: Colors.white)),
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
                        border: Border.all(width: 3, color: Colors.white),
                        color: Color.fromARGB(255, 25, 80, 125),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Şifre',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
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
                        border: Border.all(width: 3, color: Colors.white),
                        color: Color.fromARGB(255, 25, 80, 125),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Tekrar Şifre',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
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
                        border: Border.all(width: 3, color: Colors.white),
                        color: Color.fromARGB(255, 25, 80, 125),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                //register button
                const SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => LoginPage()), // Geçici
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 75.0),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 25, 80, 125),
                        ),
                        child: Center(
                          child: Text(
                            'Kaydol',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // turn back to login page
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text(
                        'Giriş Sayfasına Dön',
                        style: TextStyle(
                          color: Color.fromARGB(255, 25, 80, 125),
                          fontSize: 16,
                        ),
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
