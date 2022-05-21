import 'package:flutter_modular/flutter_modular.dart';
import 'package:path/path.dart';

import 'dart:io';
import 'package:buscalar/app/classes/Database.dart';
import 'package:buscalar/app/classes/Immobile.dart';
import 'package:buscalar/app/classes/Immobile_Daily.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:image/image.dart' as img;

part 'register_announcement_store.g.dart';

class RegisterAnnouncementStore = _RegisterAnnouncementStoreBase
    with _$RegisterAnnouncementStore;

abstract class _RegisterAnnouncementStoreBase with Store {
  final Immobile? immobile;

  _RegisterAnnouncementStoreBase(@Data this.immobile) {
    if (immobile != null) {
      setImmobile();
    }
  }

  @action
  void setImmobile() {
    setCep(immobile?.cep);
    setType(immobile?.city);
    setBorough(immobile?.borough);
    setCity(immobile?.address);
    setLatitude(immobile?.latitude);
    setLongitude(immobile?.longitude);
    setImages(immobile?.images);
    setNumberRoom(immobile?.numberRoom);
    setNumberBedroom(immobile?.numberBedroom);
    setArea(immobile?.area);
    setGarage(immobile?.garage);
    setDescription(immobile?.description);
    setNumberPhone(immobile?.numberPhone);
    setUserId(immobile?.userId);
    setType(immobile?.type);
    setPrice(immobile?.price);
  }

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
  List<String>? images;

  @observable
  String? numberRoom;

  @observable
  String? numberBedroom;

  @observable
  String? area;

  @observable
  String? numberGarage;

  @observable
  List<String?>? imagesAnnouncement;

  @observable
  String? description;

  @observable
  String? numberPhone;

  @observable
  String? userId;

  @observable
  String? type;

  @observable
  String? price;

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
  void setImages(List<String>? images) => this.images = images;

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
  void setDescription(String? description) => this.description = description;

  @action
  void setNumberPhone(String? numberPhone) => this.numberPhone = numberPhone;

  @action
  void setUserId(String? userId) => this.userId = userId;

  @action
  String getInformation(field1, field2) {
    return field1 != null && field1?.length == 8 ? field2 ?? '' : '';
  }

  @action
  void setType(String? type) => this.type = type;

  @action
  void setPrice(String? price) => this.price = price;

  @action
  void setImagesAnnouncement(List<String?>? imagesAnnouncement) =>
      this.imagesAnnouncement = imagesAnnouncement;

  Immobile getData() {
    return Immobile(
      cep,
      city,
      borough,
      address,
      longitude,
      latitude,
      images ?? [],
      numberRoom,
      numberBedroom,
      type,
      area,
      numberGarage,
      description,
      '22 9900-0000',
      '1',
      price,
    );
  }

  @action
  Future<void> uploadImages() async {
    final ImagePicker _picker = ImagePicker();
    final images = await _picker.pickMultiImage();
    List<String> imagesList = [];

    if (images != null) {
      for (final image in images) {
        final imageFile = await Database().uploadImage(image);
        imagesList.add(imageFile);
      }
    }

    setImages(imagesList);
  }

  @action
  Future<void> save() async {
    await Database().addImmobile(getData().getImmobile);
  }
}
