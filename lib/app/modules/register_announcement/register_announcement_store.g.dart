// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_announcement_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterAnnouncementStore on _RegisterAnnouncementStoreBase, Store {
  final _$valueAtom = Atom(name: '_RegisterAnnouncementStoreBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_RegisterAnnouncementStoreBaseActionController =
      ActionController(name: '_RegisterAnnouncementStoreBase');

  @override
  void save(dynamic immobile) {
    final _$actionInfo = _$_RegisterAnnouncementStoreBaseActionController
        .startAction(name: '_RegisterAnnouncementStoreBase.save');
    try {
      return super.save(immobile);
    } finally {
      _$_RegisterAnnouncementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
