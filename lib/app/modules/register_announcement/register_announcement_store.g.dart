// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_announcement_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterAnnouncementStore on _RegisterAnnouncementStoreBase, Store {
  final _$cepAtom = Atom(name: '_RegisterAnnouncementStoreBase.cep');

  @override
  String? get cep {
    _$cepAtom.reportRead();
    return super.cep;
  }

  @override
  set cep(String? value) {
    _$cepAtom.reportWrite(value, super.cep, () {
      super.cep = value;
    });
  }

  final _$cityAtom = Atom(name: '_RegisterAnnouncementStoreBase.city');

  @override
  String? get city {
    _$cityAtom.reportRead();
    return super.city;
  }

  @override
  set city(String? value) {
    _$cityAtom.reportWrite(value, super.city, () {
      super.city = value;
    });
  }

  final _$boroughAtom = Atom(name: '_RegisterAnnouncementStoreBase.borough');

  @override
  String? get borough {
    _$boroughAtom.reportRead();
    return super.borough;
  }

  @override
  set borough(String? value) {
    _$boroughAtom.reportWrite(value, super.borough, () {
      super.borough = value;
    });
  }

  final _$addressAtom = Atom(name: '_RegisterAnnouncementStoreBase.address');

  @override
  String? get address {
    _$addressAtom.reportRead();
    return super.address;
  }

  @override
  set address(String? value) {
    _$addressAtom.reportWrite(value, super.address, () {
      super.address = value;
    });
  }

  final _$longitudeAtom =
      Atom(name: '_RegisterAnnouncementStoreBase.longitude');

  @override
  String? get longitude {
    _$longitudeAtom.reportRead();
    return super.longitude;
  }

  @override
  set longitude(String? value) {
    _$longitudeAtom.reportWrite(value, super.longitude, () {
      super.longitude = value;
    });
  }

  final _$latitudeAtom = Atom(name: '_RegisterAnnouncementStoreBase.latitude');

  @override
  String? get latitude {
    _$latitudeAtom.reportRead();
    return super.latitude;
  }

  @override
  set latitude(String? value) {
    _$latitudeAtom.reportWrite(value, super.latitude, () {
      super.latitude = value;
    });
  }

  final _$imagesAtom = Atom(name: '_RegisterAnnouncementStoreBase.images');

  @override
  String? get images {
    _$imagesAtom.reportRead();
    return super.images;
  }

  @override
  set images(String? value) {
    _$imagesAtom.reportWrite(value, super.images, () {
      super.images = value;
    });
  }

  final _$numberRoomAtom =
      Atom(name: '_RegisterAnnouncementStoreBase.numberRoom');

  @override
  String? get numberRoom {
    _$numberRoomAtom.reportRead();
    return super.numberRoom;
  }

  @override
  set numberRoom(String? value) {
    _$numberRoomAtom.reportWrite(value, super.numberRoom, () {
      super.numberRoom = value;
    });
  }

  final _$numberBedroomAtom =
      Atom(name: '_RegisterAnnouncementStoreBase.numberBedroom');

  @override
  String? get numberBedroom {
    _$numberBedroomAtom.reportRead();
    return super.numberBedroom;
  }

  @override
  set numberBedroom(String? value) {
    _$numberBedroomAtom.reportWrite(value, super.numberBedroom, () {
      super.numberBedroom = value;
    });
  }

  final _$areaAtom = Atom(name: '_RegisterAnnouncementStoreBase.area');

  @override
  String? get area {
    _$areaAtom.reportRead();
    return super.area;
  }

  @override
  set area(String? value) {
    _$areaAtom.reportWrite(value, super.area, () {
      super.area = value;
    });
  }

  final _$numberGarageAtom =
      Atom(name: '_RegisterAnnouncementStoreBase.numberGarage');

  @override
  String? get numberGarage {
    _$numberGarageAtom.reportRead();
    return super.numberGarage;
  }

  @override
  set numberGarage(String? value) {
    _$numberGarageAtom.reportWrite(value, super.numberGarage, () {
      super.numberGarage = value;
    });
  }

  final _$imagesAnnouncementAtom =
      Atom(name: '_RegisterAnnouncementStoreBase.imagesAnnouncement');

  @override
  List<String?>? get imagesAnnouncement {
    _$imagesAnnouncementAtom.reportRead();
    return super.imagesAnnouncement;
  }

  @override
  set imagesAnnouncement(List<String?>? value) {
    _$imagesAnnouncementAtom.reportWrite(value, super.imagesAnnouncement, () {
      super.imagesAnnouncement = value;
    });
  }

  final _$getInformationFurCepAsyncAction =
      AsyncAction('_RegisterAnnouncementStoreBase.getInformationFurCep');

  @override
  Future<void> getInformationFurCep(String? cep) {
    return _$getInformationFurCepAsyncAction
        .run(() => super.getInformationFurCep(cep));
  }

  final _$uploadImagesAsyncAction =
      AsyncAction('_RegisterAnnouncementStoreBase.uploadImages');

  @override
  Future<void> uploadImages() {
    return _$uploadImagesAsyncAction.run(() => super.uploadImages());
  }

  final _$saveAsyncAction = AsyncAction('_RegisterAnnouncementStoreBase.save');

  @override
  Future<void> save() {
    return _$saveAsyncAction.run(() => super.save());
  }

  final _$_RegisterAnnouncementStoreBaseActionController =
      ActionController(name: '_RegisterAnnouncementStoreBase');

  @override
  void setCep(String? cep) {
    final _$actionInfo = _$_RegisterAnnouncementStoreBaseActionController
        .startAction(name: '_RegisterAnnouncementStoreBase.setCep');
    try {
      return super.setCep(cep);
    } finally {
      _$_RegisterAnnouncementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCity(String? city) {
    final _$actionInfo = _$_RegisterAnnouncementStoreBaseActionController
        .startAction(name: '_RegisterAnnouncementStoreBase.setCity');
    try {
      return super.setCity(city);
    } finally {
      _$_RegisterAnnouncementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBorough(String? borough) {
    final _$actionInfo = _$_RegisterAnnouncementStoreBaseActionController
        .startAction(name: '_RegisterAnnouncementStoreBase.setBorough');
    try {
      return super.setBorough(borough);
    } finally {
      _$_RegisterAnnouncementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddress(String? address) {
    final _$actionInfo = _$_RegisterAnnouncementStoreBaseActionController
        .startAction(name: '_RegisterAnnouncementStoreBase.setAddress');
    try {
      return super.setAddress(address);
    } finally {
      _$_RegisterAnnouncementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLongitude(String? longitude) {
    final _$actionInfo = _$_RegisterAnnouncementStoreBaseActionController
        .startAction(name: '_RegisterAnnouncementStoreBase.setLongitude');
    try {
      return super.setLongitude(longitude);
    } finally {
      _$_RegisterAnnouncementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLatitude(String? latitude) {
    final _$actionInfo = _$_RegisterAnnouncementStoreBaseActionController
        .startAction(name: '_RegisterAnnouncementStoreBase.setLatitude');
    try {
      return super.setLatitude(latitude);
    } finally {
      _$_RegisterAnnouncementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setImages(String? images) {
    final _$actionInfo = _$_RegisterAnnouncementStoreBaseActionController
        .startAction(name: '_RegisterAnnouncementStoreBase.setImages');
    try {
      return super.setImages(images);
    } finally {
      _$_RegisterAnnouncementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNumberRoom(String? numberRoom) {
    final _$actionInfo = _$_RegisterAnnouncementStoreBaseActionController
        .startAction(name: '_RegisterAnnouncementStoreBase.setNumberRoom');
    try {
      return super.setNumberRoom(numberRoom);
    } finally {
      _$_RegisterAnnouncementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNumberBedroom(String? numberBedroom) {
    final _$actionInfo = _$_RegisterAnnouncementStoreBaseActionController
        .startAction(name: '_RegisterAnnouncementStoreBase.setNumberBedroom');
    try {
      return super.setNumberBedroom(numberBedroom);
    } finally {
      _$_RegisterAnnouncementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setArea(String? area) {
    final _$actionInfo = _$_RegisterAnnouncementStoreBaseActionController
        .startAction(name: '_RegisterAnnouncementStoreBase.setArea');
    try {
      return super.setArea(area);
    } finally {
      _$_RegisterAnnouncementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setGarage(String? numberGarage) {
    final _$actionInfo = _$_RegisterAnnouncementStoreBaseActionController
        .startAction(name: '_RegisterAnnouncementStoreBase.setGarage');
    try {
      return super.setGarage(numberGarage);
    } finally {
      _$_RegisterAnnouncementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String getInformation(dynamic field1, dynamic field2) {
    final _$actionInfo = _$_RegisterAnnouncementStoreBaseActionController
        .startAction(name: '_RegisterAnnouncementStoreBase.getInformation');
    try {
      return super.getInformation(field1, field2);
    } finally {
      _$_RegisterAnnouncementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setImagesAnnouncement(List<String?>? imagesAnnouncement) {
    final _$actionInfo =
        _$_RegisterAnnouncementStoreBaseActionController.startAction(
            name: '_RegisterAnnouncementStoreBase.setImagesAnnouncement');
    try {
      return super.setImagesAnnouncement(imagesAnnouncement);
    } finally {
      _$_RegisterAnnouncementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cep: ${cep},
city: ${city},
borough: ${borough},
address: ${address},
longitude: ${longitude},
latitude: ${latitude},
images: ${images},
numberRoom: ${numberRoom},
numberBedroom: ${numberBedroom},
area: ${area},
numberGarage: ${numberGarage},
imagesAnnouncement: ${imagesAnnouncement}
    ''';
  }
}
