// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:buscalar/app/components/input-search.dart';
import 'package:buscalar/app/components/point.dart';
import 'package:buscalar/app/modules/home/home_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart' as latLng;

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeStore store = Modular.get();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 0) {
      Modular.to.pushReplacementNamed('/home');
    } else if (index == 1) {
      print('${store.immobiles}');
      Modular.to.pushReplacementNamed(
        '/list-announcemnt',
      );
    } else if (index == 2) {
      Modular.to.pushReplacementNamed('/user-profile');
    } else if (index == 3) {
      Modular.to.pushReplacementNamed('/about');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.white,
        title:
            InputSearch(title: 'Digite o local que deseja', icon: Icons.search),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 160,
            child: Observer(builder: (context) {
              return FlutterMap(
                options: MapOptions(
                  center: latLng.LatLng(-21.758991, -41.319724),
                  zoom: 13,
                ),
                layers: [
                  TileLayerOptions(
                    urlTemplate:
                        'https://api.mapbox.com/styles/v1/luispeixoto1/cl1vv5twn002814pjwkdf4ue0/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibHVpc3BlaXhvdG8xIiwiYSI6ImNsMXZ2MmRjcDFqbzQza29memh5Ynp2ejMifQ.W6_o3ZTzZmARwzbFCLZ34w',
                    subdomains: ['a', 'b', 'c'],
                  ),
                  MarkerLayerOptions(
                    markers: store.immobiles
                        .map((immobile) => Marker(
                              width: 200,
                              height: 75,
                              point: latLng.LatLng(
                                  double.parse(
                                      immobile.latitude ?? '-21.766655'),
                                  double.parse(
                                      immobile.longitude ?? '-41.319724')),
                              builder: (ctx) => Point(immobile: immobile),
                            ))
                        .toList(),
                  ),
                ],
              );
            }),
          )
        ],
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
        //currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF930000),
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xFF930000),
        label: Text('Criar anúncio'),
        onPressed: () {
          Modular.to.pushNamed('/register');
        },
        icon: Icon(Icons.add),
      ),
    );
  }
}
