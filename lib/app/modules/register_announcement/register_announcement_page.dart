import 'package:flutter_modular/flutter_modular.dart';
import 'package:buscalar/app/modules/register_announcement/register_announcement_store.dart';
import 'package:flutter/material.dart';

class RegisterAnnouncementPage extends StatefulWidget {
  final String title;
  const RegisterAnnouncementPage({Key? key, this.title = 'RegisterPage'})
      : super(key: key);
  @override
  RegisterAnnouncementPageState createState() =>
      RegisterAnnouncementPageState();
}

class RegisterAnnouncementPageState extends State<RegisterAnnouncementPage> {
  final RegisterAnnouncementStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 24),
              SizedBox(height: 24),
              Image(image: AssetImage('assets/logo.png')),
              SizedBox(height: 24),
              Text(
                'Criar um novo anuncio',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon:
                        Icon(Icons.home_work_rounded, color: Color(0xFF949597)),
                    suffixIcon: Icon(Icons.keyboard_arrow_down_outlined,
                        color: Color(0xFF949597)),
                    filled: true,
                    fillColor: Color(0xFFEBEBEB),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8)),
                    hintStyle: TextStyle(color: Color(0xFF949597)),
                    hintText: 'Selecione o tipo do imovel',
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFEBEBEB),
                    prefixIcon:
                        Icon(Icons.near_me_rounded, color: Color(0xFF949597)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8)),
                    hintStyle: TextStyle(color: Color(0xFF949597)),
                    hintText: 'CEP',
                  ),
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFEBEBEB),
                    prefixIcon:
                        Icon(Icons.location_city, color: Color(0xFF949597)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8)),
                    hintStyle: TextStyle(color: Color(0xFF949597)),
                    hintText: 'Cidade',
                  ),
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFEBEBEB),
                    prefixIcon:
                        Icon(Icons.location_on, color: Color(0xFF949597)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8)),
                    hintStyle: TextStyle(color: Color(0xFF949597)),
                    hintText: 'Bairro',
                  ),
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFEBEBEB),
                    prefixIcon: Icon(Icons.streetview_rounded,
                        color: Color(0xFF949597)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8)),
                    hintStyle: TextStyle(color: Color(0xFF949597)),
                    hintText: 'Endereço',
                  ),
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFEBEBEB),
                    prefixIcon:
                        Icon(Icons.numbers_rounded, color: Color(0xFF949597)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8)),
                    hintStyle: TextStyle(color: Color(0xFF949597)),
                    hintText: 'Número',
                  ),
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Infomacões do imovel',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFEBEBEB),
                    prefixIcon: Icon(Icons.meeting_room_sharp,
                        color: Color(0xFF949597)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8)),
                    hintStyle: TextStyle(color: Color(0xFF949597)),
                    hintText: 'Número de quartos',
                  ),
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFEBEBEB),
                    prefixIcon: Icon(Icons.bathtub, color: Color(0xFF949597)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8)),
                    hintStyle: TextStyle(color: Color(0xFF949597)),
                    hintText: 'Número de banheiros',
                  ),
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFEBEBEB),
                    prefixIcon:
                        Icon(Icons.app_registration, color: Color(0xFF949597)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8)),
                    hintStyle: TextStyle(color: Color(0xFF949597)),
                    hintText: 'Área(m²)',
                  ),
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFEBEBEB),
                    prefixIcon: Icon(Icons.car_repair_outlined,
                        color: Color(0xFF949597)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8)),
                    hintStyle: TextStyle(color: Color(0xFF949597)),
                    hintText: 'Número de vagas de garagem',
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
                    child: Text('Cadastrar',
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w300,
                            color: Colors.white))),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
