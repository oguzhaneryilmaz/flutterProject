import 'login_page.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: Color.fromARGB(255, 166, 227, 244),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.mark_email_read,
              size: 100,
              color: Colors.white,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Şifresini unuttuğunuz hesabın \nmail adresini girin',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 25, 80, 125),
                fontSize: 20,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                    color: Color.fromARGB(255, 25, 80, 125),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        )),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 25, 80, 125),
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    )),
                child: GestureDetector(
                  onTap: changeData,
                  child: Center(
                    child: Text(
                      'Mail Gönder',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
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
                    color: Color.fromARGB(255, 25, 80, 125),
                    fontWeight: FontWeight.bold,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
