import 'package:buscalar/app/components/input.dart';
import 'package:buscalar/app/components/loading.dart';
import 'package:buscalar/app/components/status-bar-style.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:buscalar/app/modules/register_user/registerUser_store.dart';
import 'package:flutter/material.dart';

class RegisterUserPage extends StatefulWidget {
  final String title;
  const RegisterUserPage({Key? key, this.title = 'RegisterUserPage'})
      : super(key: key);
  @override
  RegisterUserPageState createState() => RegisterUserPageState();
}

class RegisterUserPageState extends State<RegisterUserPage> {
  final RegisterUserStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    StatusBarStyle();
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 86),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(image: AssetImage('assets/logo.png')),
              SizedBox(height: 24),
              Text(
                'Crie sua conta',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 24),
              Input(
                  title: 'Nome completo',
                  icon: Icons.person,
                  onChanged: store.setName),
              SizedBox(height: 24),
              Input(
                  title: 'Email', icon: Icons.email, onChanged: store.setEmail),
              SizedBox(height: 24),
              Input(
                title: 'Whatsapp',
                icon: Icons.whatsapp,
                onChanged: store.setPhoneNumber,
              ),
              SizedBox(height: 24),
              Input(
                  title: 'Senha',
                  icon: Icons.password,
                  onChanged: store.setPassword),
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
                    onPressed: () async {
                      loading(context);
                      await store.registerUser();
                      Modular.to.pop();
                      Modular.to.pop();
                    },
                    child: Text('Cadastrar-se',
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w300,
                            color: Colors.white))),
              ),
              SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }
}
