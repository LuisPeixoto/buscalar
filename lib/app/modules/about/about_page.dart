import 'package:buscalar/app/components/bottomNavigationBarItems.dart';
import 'package:buscalar/app/components/status-bar-style.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:buscalar/app/modules/about/about_store.dart';
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
                'CCT - Centro de Ciência e Tecnologia',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'LCMAT - Laboratório de Matemáticas',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'CC - Curso de Ciência da Computação',
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
                'O Buscalar é um aplicativo para dispositivos móveis de anúncios de imóveis, onde os usuários podem visualizar e criar anúncios tanto para vender quanto para alugar. O aplicativo facilita a visualização dos anúncios através de uma mapa, onde é possível visualizar anúncios de imóveis ao redor da posição atual do usuário ou uma posição escolhida. Foi desenvolvido para a disciplina de Paradigma Orientado a Objetos para Desenvolvimento de Software da Universidade Estadual do Norte Fluminense Darcy Ribeiro (UENF).',
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Sobre',
          ),
        ],
        currentIndex: 3,
        selectedItemColor: Color(0xFF930000),
        onTap: bottomNavigationBarItems,
      ),
    );
  }
}
