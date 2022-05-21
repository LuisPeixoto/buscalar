// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:buscalar/app/components/button-search-input.dart';
import 'package:buscalar/app/components/inputSearchHome.dart';
import 'package:buscalar/app/components/loading.dart';
import 'package:buscalar/app/components/navbar.dart';
import 'package:buscalar/app/components/point.dart';
import 'package:buscalar/app/components/status-bar-style.dart';
import 'package:buscalar/app/modules/home/home_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_map/flutter_map.dart';
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

  late final MapController mapController;

  @override
  void initState() {
    super.initState();
    mapController = MapController();
    store.getLocationCurrent(mapController);
  }

  @override
  Widget build(BuildContext context) {
    StatusBarStyle();

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Observer(builder: (context) {
              return FlutterMap(
                mapController: mapController,
                options: MapOptions(
                  slideOnBoundaries: true,
                  center: latLng.LatLng(store.latitude, store.longitude),
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
                                      immobile.latitude ?? '-21.7635423'),
                                  double.parse(
                                      immobile.longitude ?? '-41.2930897')),
                              builder: (ctx) => Point(immobile: immobile),
                            ))
                        .toList(),
                  ),
                ],
              );
            }),
          ),
          Positioned(
              top: 32,
              //height: 60,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        child: InputSearchHome(
                            title: 'Digite o local que deseja',
                            onChanged: store.setSearchInput),
                      ),
                    ),
                    ButtonSearchInput(onPressed: () async {
                      loading(context);
                      await store.getLocation(mapController);
                      Navigator.of(context).pop();
                    }),
                  ],
                ),
              ))
        ],
      ),
      bottomNavigationBar: NavBar(currentIndex: 0),
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
