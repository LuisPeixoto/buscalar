import 'dart:convert';

import 'package:buscalar/app/classes/Database.dart';
import 'package:buscalar/app/classes/Immobile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  int counter = 0;

  HomeStoreBase() {
    getAllImmobiles();
  }

  @observable
  double latitude = -21.758991;

  @observable
  double longitude = -47.349986;

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

  @action
  Future<void> getLocation() async {
    final Map<String, String> queryParams = {
      'q': searchInput ?? "",
      'format': 'json',
    };
    final uri = Uri.http('nominatim.openstreetmap.org', 'search/', queryParams);
    final response = await http.get(uri);

    final json = jsonDecode(response.body);
    setLatitude(double.parse(json[0]['lat'].toString()));
    setLongitude(double.parse(json[0]['lon'].toString()));
  }

  @action
  Future<void> getAllImmobiles() async {
    var data = await Database().getAllImmobiles;
    setImmobiles(data);
  }
}
