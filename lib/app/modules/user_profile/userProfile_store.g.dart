// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userProfile_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserProfileStore on _UserProfileStoreBase, Store {
  final _$valueAtom = Atom(name: '_UserProfileStoreBase.value');

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

  final _$_UserProfileStoreBaseActionController =
      ActionController(name: '_UserProfileStoreBase');

  @override
  void increment() {
    final _$actionInfo = _$_UserProfileStoreBaseActionController.startAction(
        name: '_UserProfileStoreBase.increment');
    try {
      return super.increment();
    } finally {
      _$_UserProfileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
