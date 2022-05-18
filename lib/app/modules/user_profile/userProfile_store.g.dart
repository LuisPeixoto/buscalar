// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userProfile_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserProfileStore on _UserProfileStoreBase, Store {
  final _$immobilesAtom = Atom(name: '_UserProfileStoreBase.immobiles');

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

  final _$myImmobilesAtom = Atom(name: '_UserProfileStoreBase.myImmobiles');

  @override
  List<Immobile> get myImmobiles {
    _$myImmobilesAtom.reportRead();
    return super.myImmobiles;
  }

  @override
  set myImmobiles(List<Immobile> value) {
    _$myImmobilesAtom.reportWrite(value, super.myImmobiles, () {
      super.myImmobiles = value;
    });
  }

  final _$myImmobilesFavoritesAtom =
      Atom(name: '_UserProfileStoreBase.myImmobilesFavorites');

  @override
  List<Immobile> get myImmobilesFavorites {
    _$myImmobilesFavoritesAtom.reportRead();
    return super.myImmobilesFavorites;
  }

  @override
  set myImmobilesFavorites(List<Immobile> value) {
    _$myImmobilesFavoritesAtom.reportWrite(value, super.myImmobilesFavorites,
        () {
      super.myImmobilesFavorites = value;
    });
  }

  final _$getAllImmobilesAsyncAction =
      AsyncAction('_UserProfileStoreBase.getAllImmobiles');

  @override
  Future<void> getAllImmobiles() {
    return _$getAllImmobilesAsyncAction.run(() => super.getAllImmobiles());
  }

  final _$_UserProfileStoreBaseActionController =
      ActionController(name: '_UserProfileStoreBase');

  @override
  void setImmobiles(List<Immobile> value) {
    final _$actionInfo = _$_UserProfileStoreBaseActionController.startAction(
        name: '_UserProfileStoreBase.setImmobiles');
    try {
      return super.setImmobiles(value);
    } finally {
      _$_UserProfileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMyImmobiles(List<Immobile> value) {
    final _$actionInfo = _$_UserProfileStoreBaseActionController.startAction(
        name: '_UserProfileStoreBase.setMyImmobiles');
    try {
      return super.setMyImmobiles(value);
    } finally {
      _$_UserProfileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMyImmobilesFavorites(List<Immobile> value) {
    final _$actionInfo = _$_UserProfileStoreBaseActionController.startAction(
        name: '_UserProfileStoreBase.setMyImmobilesFavorites');
    try {
      return super.setMyImmobilesFavorites(value);
    } finally {
      _$_UserProfileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
immobiles: ${immobiles},
myImmobiles: ${myImmobiles},
myImmobilesFavorites: ${myImmobilesFavorites}
    ''';
  }
}
