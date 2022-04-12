// ignore_for_file: prefer_const_constructors

import 'package:flutter_modular/flutter_modular.dart';
import 'package:buscalar/app/login/login_store.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final LoginStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('assets/logo.png')),
            SizedBox(height: 24),
            Text(
              'Mantenha-se conectado',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFEBEBEB),
                  prefixIcon:
                      Icon(Icons.email_rounded, color: Color(0xFF949597)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8)),
                  hintStyle: TextStyle(color: Color(0xFF949597)),
                  hintText: 'Email',
                ),
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon:
                      Icon(Icons.lock_rounded, color: Color(0xFF949597)),
                  suffixIcon: Icon(Icons.visibility_off_rounded,
                      color: Color(0xFF949597)),
                  filled: true,
                  fillColor: Color(0xFFEBEBEB),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8)),
                  hintStyle: TextStyle(color: Color(0xFF949597)),
                  hintText: 'Senha',
                ),
              ),
            ),
            SizedBox(height: 24),
            Container(
              width: double.infinity,
              height: 59,
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Color(0xFF930000),
                    minimumSize: Size(88, 36),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  onPressed: () {
                    Modular.to.pushNamed('/home');
                  },
                  child: Text('Login',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w300,
                          color: Colors.white))),
            ),
            SizedBox(height: 24),
            Text(
              'OU',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF797575)),
            ),
            SizedBox(height: 24),
            Container(
              width: double.infinity,
              height: 59,
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Color(0xFF930000),
                    minimumSize: Size(88, 36),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  onPressed: null,
                  child: Text('Cadastra-se',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w300,
                          color: Color.fromARGB(255, 132, 132, 132)))),
            ),
          ],
        ),
      ),
    );
  }
}
