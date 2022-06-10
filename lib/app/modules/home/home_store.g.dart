// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  final _$counterAtom = Atom(name: 'HomeStoreBase.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$latitudeAtom = Atom(name: 'HomeStoreBase.latitude');

  @override
  double get latitude {
    _$latitudeAtom.reportRead();
    return super.latitude;
  }

  @override
  set latitude(double value) {
    _$latitudeAtom.reportWrite(value, super.latitude, () {
      super.latitude = value;
    });
  }

  final _$longitudeAtom = Atom(name: 'HomeStoreBase.longitude');

  @override
  double get longitude {
    _$longitudeAtom.reportRead();
    return super.longitude;
  }

  @override
  set longitude(double value) {
    _$longitudeAtom.reportWrite(value, super.longitude, () {
      super.longitude = value;
    });
  }

  final _$immobilesAtom = Atom(name: 'HomeStoreBase.immobiles');

  @override
  List<Immobile> get immobiles {
    _$immobilesAtom.reportRead();
    return super.immobiles;
  }

  @override
  set immobiles(List<Immobile> value) {
    _$immobilesAtom.reportWrite(value, super.immobiles, () {
      super.immobiles = value;
    });
  }

  final _$searchInputAtom = Atom(name: 'HomeStoreBase.searchInput');

  @override
  String? get searchInput {
    _$searchInputAtom.reportRead();
    return super.searchInput;
  }

  @override
  set searchInput(String? value) {
    _$searchInputAtom.reportWrite(value, super.searchInput, () {
      super.searchInput = value;
    });
  }

  final _$getLocationAsyncAction = AsyncAction('HomeStoreBase.getLocation');

  @override
  Future<void> getLocation(MapController mapController) {
    return _$getLocationAsyncAction.run(() => super.getLocation(mapController));
  }

  final _$getAllImmobilesAsyncAction =
      AsyncAction('HomeStoreBase.getAllImmobiles');

  @override
  Future<void> getAllImmobiles() {
    return _$getAllImmobilesAsyncAction.run(() => super.getAllImmobiles());
  }

  final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase');

  @override
  void setImmobiles(List<Immobile> value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setImmobiles');
    try {
      return super.setImmobiles(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSearchInput(String? value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setSearchInput');
    try {
      return super.setSearchInput(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLatitude(double value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setLatitude');
    try {
      return super.setLatitude(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLongitude(double value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setLongitude');
    try {
      return super.setLongitude(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void moveMap(MapController mapController, double latitude, double longitude) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.moveMap');
    try {
      return super.moveMap(mapController, latitude, longitude);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter},
latitude: ${latitude},
longitude: ${longitude},
immobiles: ${immobiles},
searchInput: ${searchInput}
    ''';
  }
}
