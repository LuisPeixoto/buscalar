import 'dart:convert';

import 'package:buscalar/app/classes/Database.dart';
import 'package:buscalar/app/classes/Immobile.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';
import 'package:latlong2/latlong.dart' as latLng;

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  int counter = 0;

  HomeStoreBase() {
    getAllImmobiles();
  }

  @observable
  double latitude = -21.7635423;

  @observable
  double longitude = -41.2930897;

  @observable
  List<Immobile> immobiles = [];
  @action
  void setImmobiles(List<Immobile> value) {
    immobiles = value;
  }

  @observable
  String? searchInput = "";

  @action
  void setSearchInput(String? value) {
    searchInput = value;
  }

  @action
  void setLatitude(double value) {
    latitude = value;
  }

  @action
  void setLongitude(double value) {
    longitude = value;
  }

  Future<void> getLocationCurrent(MapController mapController) async {
    Location location = Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();

    setLatitude(_locationData.latitude ?? -41.2930897);
    setLongitude(_locationData.longitude ?? -41.2930897);

    moveMap(mapController, latitude, longitude);
  }

  @action
  Future<void> getLocation(MapController mapController) async {
    final Map<String, String> queryParams = {
      'q': searchInput ?? "",
      'format': 'json',
    };
    final uri = Uri.http('nominatim.openstreetmap.org', 'search/', queryParams);
    final response = await http.get(uri);

    final json = jsonDecode(response.body);
    setLatitude(double.parse(json[0]['lat'].toString()));
    setLongitude(double.parse(json[0]['lon'].toString()));

    moveMap(mapController, latitude, longitude);
  }

  @action
  void moveMap(MapController mapController, double latitude, double longitude) {
    mapController.move(
      latLng.LatLng(
        latitude,
        longitude,
      ),
      13,
    );
  }

  @action
  Future<void> getAllImmobiles() async {
    var data = await Database().getAllImmobiles;
    setImmobiles(data);
  }
}
