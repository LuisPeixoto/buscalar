import 'package:Buscalar/app/components/navbar.dart';
import 'package:Buscalar/app/components/status-bar-style.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:Buscalar/app/modules/about/about_store.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  final String title;
  const AboutPage({Key? key, this.title = 'AboutPage'}) : super(key: key);
  @override
  AboutPageState createState() => AboutPageState();
}

class AboutPageState extends State<AboutPage> {
  final AboutStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    StatusBarStyle();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 120),
              Image(image: AssetImage('assets/logo.png')),
              SizedBox(height: 24),
              Center(
                child: Text(
                  'Autores',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Aluno: Luis Fernando Peixoto Cabral',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Professor: Ausberto S. Castro Vera',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: const [
                  Expanded(
                      child: Image(
                          image: AssetImage('assets/uenf.png'), height: 150)),
                  Expanded(
                      child: Image(
                          image: AssetImage('assets/cc.png'), height: 150)),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'UENF - Universidade Estadual do Norte Fluminense Darcy Ribeiro',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'CCT - Centro de Ci??ncia e Tecnologia',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'LCMAT - Laborat??rio de Matem??ticas',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'CC - Curso de Ci??ncia da Computa????o',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Text(
                  'Sobre o projeto',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'O Buscalar ?? um aplicativo para dispositivos m??veis de an??ncios de im??veis, onde os usu??rios podem visualizar e criar an??ncios tanto para vender quanto para alugar. O aplicativo facilita a visualiza????o dos an??ncios atrav??s de uma mapa, onde ?? poss??vel visualizar an??ncios de im??veis ao redor da posi????o atual do usu??rio ou uma posi????o escolhida. Foi desenvolvido para a disciplina de Paradigma Orientado a Objetos para Desenvolvimento de Software da Universidade Estadual do Norte Fluminense Darcy Ribeiro (UENF).',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF828282),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(currentIndex: 3),
    );
  }
}
