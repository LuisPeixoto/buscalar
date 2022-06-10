// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SplashStore on _SplashStoreBase, Store {
  final _$isLoggedInAtom = Atom(name: '_SplashStoreBase.isLoggedIn');

  @override
  bool get isLoggedIn {
    _$isLoggedInAtom.reportRead();
    return super.isLoggedIn;
  }

  @override
  set isLoggedIn(bool value) {
    _$isLoggedInAtom.reportWrite(value, super.isLoggedIn, () {
      super.isLoggedIn = value;
    });
  }

  final _$checkLoginAsyncAction = AsyncAction('_SplashStoreBase.checkLogin');

  @override
  Future<void> checkLogin() {
    return _$checkLoginAsyncAction.run(() => super.checkLogin());
  }

  final _$redirectAsyncAction = AsyncAction('_SplashStoreBase.redirect');

  @override
  Future<void> redirect() {
    return _$redirectAsyncAction.run(() => super.redirect());
  }

  @override
  String toString() {
    return '''
isLoggedIn: ${isLoggedIn}
    ''';
  }
}
