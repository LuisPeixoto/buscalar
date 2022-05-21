import 'dart:convert';

import 'package:buscalar/app/components/button_small.dart';
import 'package:buscalar/app/components/input.dart';
import 'package:buscalar/app/components/loading.dart';
import 'package:buscalar/app/components/select.dart';
import 'package:buscalar/app/components/status-bar-style.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:buscalar/app/modules/register_announcement/register_announcement_store.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  final _controllerCep = TextEditingController();
  final _controllerCity = TextEditingController();
  final _controllerBorough = TextEditingController();
  final _controllerAddress = TextEditingController();
  final _controllerNumberRoom = TextEditingController();
  final _controllerNumberBedroom = TextEditingController();
  final _controllerArea = TextEditingController();
  final _controllerGarage = TextEditingController();
  final _controllerDescription = TextEditingController();
  final _controllerPrice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    StatusBarStyle();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xFF930000)),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        //title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 24),
              Text(
                'Criar um novo anuncio',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 24),
              Observer(builder: (context) {
                return Select(
                    title: 'Selecione o tipo de anuncio',
                    icon: Icons.home_work_rounded,
                    value: store.type,
                    onChanged: store.setType,
                    items: const ['Aluguel', 'Venda']);
              }),
              SizedBox(height: 24),
              Observer(builder: (context) {
                return Input(
                  title: 'CEP',
                  icon: Icons.near_me,
                  controller: _controllerCep..text = store.cep ?? '',
                  onChanged: store.setCep,
                );
              }),
              SizedBox(height: 24),
              Observer(builder: (context) {
                return Input(
                  title: 'Cidade',
                  icon: Icons.location_city,
                  controller: _controllerCity..text = store.city ?? '',
                );
              }),
              SizedBox(height: 24),
              Observer(builder: (context) {
                return Input(
                  title: 'Bairro',
                  icon: Icons.location_on,
                  controller: _controllerBorough..text = store.borough ?? '',
                );
              }),
              SizedBox(height: 24),
              Observer(builder: (context) {
                return Input(
                    title: 'Endereço',
                    icon: Icons.streetview_rounded,
                    controller: _controllerAddress..text = store.address ?? '');
              }),
              SizedBox(height: 48),
              Text(
                'Infomacões do imovel',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
              ),
              //...getFields(immobileFields),
              SizedBox(height: 24),
              Input(
                title: 'Número de quartos',
                icon: Icons.meeting_room_sharp,
                onChanged: store.setNumberRoom,
                controller: _controllerNumberRoom
                  ..text = store.numberRoom ?? '',
              ),
              SizedBox(height: 24),
              Input(
                title: 'Número de banheiros',
                icon: Icons.bathtub_rounded,
                onChanged: store.setNumberBedroom,
                controller: _controllerNumberBedroom
                  ..text = store.numberBedroom ?? '',
              ),
              SizedBox(height: 24),
              Input(
                title: 'Area(m²)',
                icon: Icons.app_registration,
                onChanged: store.setArea,
                controller: _controllerArea..text = store.area ?? '',
              ),
              SizedBox(height: 24),
              Input(
                title: 'Numero de vagas de garagem',
                icon: Icons.car_repair_rounded,
                onChanged: store.setGarage,
                controller: _controllerGarage..text = store.numberGarage ?? '',
              ),
              SizedBox(height: 24),
              Input(
                title: 'Descrição',
                icon: Icons.description_rounded,
                onChanged: store.setDescription,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: _controllerDescription
                  ..text = store.description ?? '',
              ),
              SizedBox(height: 24),
              Observer(builder: (context) {
                return Input(
                  title: store.type == 'Aluguel' ? 'Valor mensal' : 'Valor',
                  icon: Icons.attach_money_outlined,
                  onChanged: store.setPrice,
                  controller: _controllerPrice..text = store.price ?? '',
                );
              }),
              SizedBox(height: 24),
              Text(
                'Adicione fotos do imovel',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 5, color: Color.fromARGB(140, 147, 0, 0)),

                    borderRadius: BorderRadius.circular(20),
                    //color: Color(0xFFEBEBEB),
                  ),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonSmall(
                        title: 'Faca o upload da foto',
                        onPress: () async {
                          loading(context);
                          await store.uploadImages();
                          Navigator.of(context).pop();
                        },
                        icon: Icons.file_upload_outlined,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'JPG e PNG, somente',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF949597)),
                      ),
                    ],
                  )),
                ),
              ),
              SizedBox(height: 24),

              Observer(builder: (context) {
                return store.images != null
                    ? SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        child: Row(
                            children: store.images!
                                .map(
                                  (image) => Container(
                                      width: 140,
                                      height: 90,
                                      margin: EdgeInsets.only(right: 16),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                      ),
                                      child: ClipRRect(
                                        child: SizedBox.fromSize(
                                          child: Image.network(image.toString(),
                                              fit: BoxFit.cover),
                                        ),
                                        borderRadius: BorderRadius.circular(
                                            10), // Image border
                                      )),
                                )
                                .toList()),
                      )
                    : SizedBox(
                        height: 0,
                      );
              }),
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
                      store.save();
                    },
                    child: Text(
                        store.immobile == null ? 'Cadastrar' : 'Atualizar',
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

List<Widget> getFields(List<Map<String, dynamic>> fields) {
  return fields.map((field) {
    return Observer(builder: (context) {
      return Column(
        children: [
          const SizedBox(height: 24),
          Input(
            title: field['title'] as String,
            icon: field['icon'] as IconData,
            onChanged: field['onChanged'] as dynamic,
            controller: field['controller'] as TextEditingController,
          ),
        ],
      );
    });
  }).toList();
}

Future<Map<String, String>> getInformationFurCep(String? cep) async {
  final response =
      await http.get(Uri.parse('https://viacep.com.br/ws/$cep/json/'));

  if (response.statusCode == 200) {
    final json = jsonDecode(response.body);

    return {
      'city': json['localidade'],
      'address': json['logradouro'],
      'borough': 'fsdfsffsf',
    };
  } else {
    return {
      'city': '',
      'borough': '',
      'address': '',
    };
  }
}
