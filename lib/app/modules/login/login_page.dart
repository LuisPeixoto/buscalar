// ignore_for_file: prefer_const_constructors

import 'package:buscalar/app/components/input.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:buscalar/app/modules/login/login_store.dart';
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
            Input(
              title: 'Email',
              icon: Icons.email_rounded,
              onChanged: store.setEmail,
            ),
            SizedBox(height: 24),
            Input(
              title: 'Senha',
              icon: Icons.lock_rounded,
              onChanged: store.setPassword,
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
                  onPressed: store.login,
                  child: Text('Login',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w300,
                          color: Colors.white))),
            ),
            SizedBox(height: 24),
            Text(
              'Não possui uma conta?',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF797575)),
            ),
            TextButton(
                onPressed: () {
                  Modular.to.pushNamed('/registerUser');
                },
                child: Text(
                  'Cadastra-se',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
