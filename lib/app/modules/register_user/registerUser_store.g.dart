// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registerUser_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterUserStore on _RegisterUserStoreBase, Store {
  final _$nameAtom = Atom(name: '_RegisterUserStoreBase.name');

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$emailAtom = Atom(name: '_RegisterUserStoreBase.email');

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$phoneNumberAtom = Atom(name: '_RegisterUserStoreBase.phoneNumber');

  @override
  String? get phoneNumber {
    _$phoneNumberAtom.reportRead();
    return super.phoneNumber;
  }

  @override
  set phoneNumber(String? value) {
    _$phoneNumberAtom.reportWrite(value, super.phoneNumber, () {
      super.phoneNumber = value;
    });
  }

  final _$passwordAtom = Atom(name: '_RegisterUserStoreBase.password');

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$registerUserAsyncAction =
      AsyncAction('_RegisterUserStoreBase.registerUser');

  @override
  Future registerUser() {
    return _$registerUserAsyncAction.run(() => super.registerUser());
  }

  final _$_RegisterUserStoreBaseActionController =
      ActionController(name: '_RegisterUserStoreBase');

  @override
  void setName(String? value) {
    final _$actionInfo = _$_RegisterUserStoreBaseActionController.startAction(
        name: '_RegisterUserStoreBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_RegisterUserStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
phoneNumber: ${phoneNumber},
password: ${password}
    ''';
  }
}
