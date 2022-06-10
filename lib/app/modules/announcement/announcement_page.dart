import 'package:buscalar/app/classes/Database.dart';
import 'package:buscalar/app/classes/Immobile.dart';
import 'package:buscalar/app/components/alert_dialog.dart';
import 'package:buscalar/app/components/loading.dart';
import 'package:buscalar/app/components/status-bar-style.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:buscalar/app/modules/announcement/announcement_store.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'dart:io';

class AnnouncementPage extends StatefulWidget {
  final String title;
  const AnnouncementPage({Key? key, this.title = 'AnnouncementPage'})
      : super(key: key);
  @override
  AnnouncementPageState createState() => AnnouncementPageState();
}

class AnnouncementPageState extends State<AnnouncementPage> {
  final AnnouncementStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    StatusBarStyle();

    Immobile immobile = store.immobile;
    var images = immobile.images!.isEmpty ? [''] : immobile.images;
    var price = 'R\$ ${immobile.price}';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xFF930000)),
        elevation: 0,
        actions: [
          Observer(builder: (context) {
            return store.immobile.userId == store.userId
                ? IconButton(
                    onPressed: () {
                      Modular.to
                          .pushNamed('/register', arguments: store.immobile);
                    },
                    icon: Icon(Icons.edit),
                    color: Color(0xFF930000),
                  )
                : Container();
          }),
          Observer(builder: (context) {
            return store.immobile.userId == store.userId
                ? IconButton(
                    onPressed: () async {
                      alertDialog(
                          context,
                          Icons.delete_forever,
                          'Você está prestes a excluir este anúncio',
                          'Isso excluirá seu anuncio do Buscalar, tem certeza?',
                          'Excluir', () async {
                        await Database()
                            .deleteImmobile(store.immobile.id.toString());
                        Modular.to.pop();
                        Modular.to.pushNamed('/home');
                      });
                    },
                    icon: Icon(Icons.delete),
                    color: Color(0xFF930000),
                  )
                : Container();
          }),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
            color: Color(0xFFD1D4DA),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
            color: Color(0xFFD1D4DA),
          ),
        ],

        //title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                  children: images!
                      .map(
                        (image) => Container(
                            width: MediaQuery.of(context).size.width - 48,
                            height: 240,
                            margin: EdgeInsets.only(right: 16),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: ClipRRect(
                              child: SizedBox.fromSize(
                                child: Image.network(image.toString(),
                                    fit: BoxFit.cover),
                              ),
                              borderRadius:
                                  BorderRadius.circular(10), // Image border
                            )),
                      )
                      .toList()),
            ),
            SizedBox(height: 16),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      immobile.type ?? '',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      '${immobile.borough}, ${immobile.city}',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF828282),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Quartos',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF930000),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '${immobile.numberRoom}',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF828282),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Banheiros',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF930000),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '${immobile.numberBedroom}',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF828282),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Garagem',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF930000),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '${immobile.garage}',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF828282),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Área',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF930000),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '${immobile.area} m²',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF828282),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      '${immobile.description}',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF828282),
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                )),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 25,
              spreadRadius: 2,
              offset: Offset(0, -10),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                price + (immobile.type == 'Aluguel' ? '/mês' : ''),
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 59,
                padding: EdgeInsets.symmetric(horizontal: 12),
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
                      var whatsapp = store.immobile.numberPhone.toString();
                      var whatsappURl_android =
                          "whatsapp://send?phone=" + whatsapp + "&text=hello";
                      var whatappURL_ios =
                          "https://wa.me/$whatsapp?text=${Uri.parse("hello")}";
                      if (Platform.isIOS) {
                        // for iOS phone only
                        if (await canLaunch(whatappURL_ios)) {
                          await launch(whatappURL_ios, forceSafariVC: false);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: new Text(
                                  "Whatsapp não está instalado no seu dispositivo")));
                        }
                      } else {
                        // android , web
                        if (await canLaunch(whatsappURl_android)) {
                          await launch(whatsappURl_android);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: new Text(
                                  "Whatsapp não está instalado no seu dispositivo")));
                        }
                      }
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.whatsapp, color: Colors.white, size: 28),
                        SizedBox(width: 4),
                        Text('Whatsapp',
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
