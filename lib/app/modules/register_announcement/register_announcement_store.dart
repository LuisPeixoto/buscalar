import 'package:buscalar/app/classes/Database.dart';
import 'package:buscalar/app/classes/Immobile.dart';
import 'package:buscalar/app/classes/Immobile_Daily.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

part 'register_announcement_store.g.dart';

class RegisterAnnouncementStore = _RegisterAnnouncementStoreBase
    with _$RegisterAnnouncementStore;

abstract class _RegisterAnnouncementStoreBase with Store {
  @observable
  String? cep;

  @observable
  String? city;

  @observable
  String? borough;

  @observable
  String? address;

  @observable
  String? longitude;

  @observable
  String? latitude;

  @observable
  String? images;

  @observable
  String? numberRoom;

  @observable
  String? numberBedroom;

  @observable
  String? area;

  @observable
  String? numberGarage;

  @action
  void setCep(String? cep) {
    this.cep = cep;
    getInformationFurCep(this.cep);
  }

  @action
  Future<void> getInformationFurCep(String? cep) async {
    if (cep?.length == 8) {
      final response = await http.get(
          Uri.parse('https://www.cepaberto.com/api/v3/cep?cep=$cep'),
          headers: {
            'Authorization': 'Token token=cd9f0d9e7bff8a4b612f4162a710e2fe'
          });

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        setBorough(json['bairro']);
        setCity(json['cidade']['nome']);
        setAddress(json['logradouro']);
        setLatitude(json['latitude']);
        setLongitude(json['longitude']);
      }
    }
  }

  @action
  void setCity(String? city) => this.city = city;

  @action
  void setBorough(String? borough) => this.borough = borough;

  @action
  void setAddress(String? address) => this.address = address;

  @action
  void setLongitude(String? longitude) => this.longitude = longitude;

  @action
  void setLatitude(String? latitude) => this.latitude = latitude;

  @action
  void setImages(String? images) => this.images = images;

  @action
  void setNumberRoom(String? numberRoom) => this.numberRoom = numberRoom;

  @action
  void setNumberBedroom(String? numberBedroom) =>
      this.numberBedroom = numberBedroom;

  @action
  void setArea(String? area) => this.area = area;

  @action
  void setGarage(String? numberGarage) => this.numberGarage = numberGarage;

  @action
  String getInformation(field1, field2) {
    return field1 != null && field1?.length == 8 ? field2 ?? '' : '';
  }

  Immobile getData() {
    return Immobile(cep, city, borough, address, longitude, latitude, images,
        numberRoom, numberBedroom, 'dayly', area, numberGarage);
  }

  //@action uploadImages(List<File> images) async {

  @action
  Future<void> save() async {
    await Database().addImmobile(getData().getImmobile);
  }
}
