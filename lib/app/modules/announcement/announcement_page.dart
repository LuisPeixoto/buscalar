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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xFF930000)),
        elevation: 0,
        actions: [
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
                  children: [
                'https://mapio.net/images-immo-detalhe/3249849/casa-de-condominio-com-3-quartos-a-venda-300-m2-por-r-1350000-horto-municipal-campos-dos-goytacazes-rj-img-0.jpeg',
                'https://http2.mlstatic.com/D_NQ_NP_627985-MLB28531587079_102018-W.jpg',
                'https://mapio.net/images-immo-detalhe/3289984/casa-de-condominio-com-3-quartos-para-alugar-por-r-4000mes-parque-rodoviario-campos-dos-goytacazes-rj-img-0.jpeg',
              ]
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
                      'Aluguel',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Pelinca, Campos dos goytacazes, RJ',
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
                            children: const [
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
                                '4',
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
                            children: const [
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
                                '4',
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
                            children: const [
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
                                '4',
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
                            children: const [
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
                                '53m²',
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
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
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
                'R\$ 930/ MÊS',
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
                      var whatsapp = "+5522981045083";
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
                              content: new Text("whatsapp no installed")));
                        }
                      } else {
                        // android , web
                        if (await canLaunch(whatsappURl_android)) {
                          await launch(whatsappURl_android);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: new Text("whatsapp no installed")));
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
