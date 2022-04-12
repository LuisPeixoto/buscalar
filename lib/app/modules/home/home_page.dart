// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          height: 52,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFEBEBEB),
              prefixIcon: Icon(Icons.search, color: Color(0xFF949597)),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8)),
              hintStyle: TextStyle(color: Color(0xFF949597)),
              hintText: 'Digite o local que deseja ',
            ),
          ),
        ),
        actions: [
          Container(
            child: Container(
              width: 62,
              margin: EdgeInsets.fromLTRB(0, 14, 16, 13),
              decoration: BoxDecoration(
                color: Color(0xFFEBEBEB),
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                icon: Icon(Icons.filter_alt, color: Color(0xFF949597)),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(children: [
              Text(
                'Todos',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF930000),
                ),
              ),
              SizedBox(width: 24),
              Text(
                'Aluguel',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 166, 167, 169),
                ),
              ),
              SizedBox(width: 24),
              Text(
                'Venda',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 166, 167, 169),
                ),
              ),
              SizedBox(width: 24),
              Text(
                'Hotel',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 166, 167, 169),
                ),
              ),
              SizedBox(width: 24),
              Text(
                'Pousada',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 166, 167, 169),
                ),
              ),
            ]),
          ),
          SizedBox(height: 16),
          Container(
            height: MediaQuery.of(context).size.height - 141,
            child: FlutterMap(
              options: MapOptions(
                center: latLng.LatLng(-21.758991, -41.319724),
                zoom: 15,
              ),
              layers: [
                TileLayerOptions(
                  urlTemplate:
                      'https://api.mapbox.com/styles/v1/luispeixoto1/cl1vv5twn002814pjwkdf4ue0/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibHVpc3BlaXhvdG8xIiwiYSI6ImNsMXZ2MmRjcDFqbzQza29memh5Ynp2ejMifQ.W6_o3ZTzZmARwzbFCLZ34w',
                  subdomains: ['a', 'b', 'c'],
                ),
                MarkerLayerOptions(
                  markers: [
                    Marker(
                      width: 185,
                      height: 185,
                      point: latLng.LatLng(-21.758991, -41.319724),
                      builder: (ctx) => Container(
                        child: Image(image: AssetImage('assets/example1.png')),
                      ),
                    ),
                    Marker(
                      width: 185,
                      height: 185,
                      point: latLng.LatLng(-21.751912, -41.311713),
                      builder: (ctx) => Container(
                        child: Image(image: AssetImage('assets/example3.png')),
                      ),
                    ),
                    Marker(
                      width: 185,
                      height: 185,
                      point: latLng.LatLng(-21.750912, -41.317713),
                      builder: (ctx) => Container(
                        child: Image(image: AssetImage('assets/example3.png')),
                      ),
                    ),
                    Marker(
                      width: 185,
                      height: 185,
                      point: latLng.LatLng(-21.755912, -41.311713),
                      builder: (ctx) => Container(
                        child: Image(image: AssetImage('assets/example2.png')),
                      ),
                    ),
                    Marker(
                      width: 185,
                      height: 185,
                      point: latLng.LatLng(-21.756912, -41.321713),
                      builder: (ctx) => Container(
                        child: Image(image: AssetImage('assets/example3.png')),
                      ),
                    ),
                    Marker(
                      width: 185,
                      height: 185,
                      point: latLng.LatLng(-21.756912, -41.321713),
                      builder: (ctx) => Container(
                        child: Image(image: AssetImage('assets/example3.png')),
                      ),
                    ),
                    Marker(
                      width: 185,
                      height: 185,
                      point: latLng.LatLng(-21.76212, -41.321713),
                      builder: (ctx) => Container(
                        child: Image(image: AssetImage('assets/example2.png')),
                      ),
                    ),
                    Marker(
                      width: 185,
                      height: 185,
                      point: latLng.LatLng(-21.76212, -41.311713),
                      builder: (ctx) => Container(
                        child: Image(image: AssetImage('assets/example1.png')),
                      ),
                    ),
                    Marker(
                      width: 185,
                      height: 185,
                      point: latLng.LatLng(-21.76612, -41.311713),
                      builder: (ctx) => Container(
                        child: Image(image: AssetImage('assets/example2.png')),
                      ),
                    ),
                    Marker(
                      width: 185,
                      height: 185,
                      point: latLng.LatLng(-21.76812, -41.318713),
                      builder: (ctx) => Container(
                        child: Image(image: AssetImage('assets/example3.png')),
                      ),
                    ),
                    Marker(
                      width: 185,
                      height: 185,
                      point: latLng.LatLng(-21.76412, -41.318713),
                      builder: (ctx) => Container(
                        child: Image(image: AssetImage('assets/example3.png')),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF930000),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
