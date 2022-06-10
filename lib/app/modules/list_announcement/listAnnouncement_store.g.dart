// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listAnnouncement_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListAnnouncementStore on _ListAnnouncementStoreBase, Store {
  Computed<List<Immobile>>? _$listAnnouncementComputed;

  @override
  List<Immobile> get listAnnouncement => (_$listAnnouncementComputed ??=
          Computed<List<Immobile>>(() => super.listAnnouncement,
              name: '_ListAnnouncementStoreBase.listAnnouncement'))
      .value;

  final _$immobilesAtom = Atom(name: '_ListAnnouncementStoreBase.immobiles');

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

  final _$searchInputAtom =
      Atom(name: '_ListAnnouncementStoreBase.searchInput');

  @override
  String get searchInput {
    _$searchInputAtom.reportRead();
    return super.searchInput;
  }

  @override
  set searchInput(String value) {
    _$searchInputAtom.reportWrite(value, super.searchInput, () {
      super.searchInput = value;
    });
  }

  final _$getAllImmobilesAsyncAction =
      AsyncAction('_ListAnnouncementStoreBase.getAllImmobiles');

  @override
  Future<void> getAllImmobiles() {
    return _$getAllImmobilesAsyncAction.run(() => super.getAllImmobiles());
  }

  final _$_ListAnnouncementStoreBaseActionController =
      ActionController(name: '_ListAnnouncementStoreBase');

  @override
  void setSearch(String? value) {
    final _$actionInfo = _$_ListAnnouncementStoreBaseActionController
        .startAction(name: '_ListAnnouncementStoreBase.setSearch');
    try {
      return super.setSearch(value);
    } finally {
      _$_ListAnnouncementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setImmobiles(List<Immobile> value) {
    final _$actionInfo = _$_ListAnnouncementStoreBaseActionController
        .startAction(name: '_ListAnnouncementStoreBase.setImmobiles');
    try {
      return super.setImmobiles(value);
    } finally {
      _$_ListAnnouncementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
immobiles: ${immobiles},
searchInput: ${searchInput},
listAnnouncement: ${listAnnouncement}
    ''';
  }
}
