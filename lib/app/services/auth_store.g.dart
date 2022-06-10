// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthStore on _AuthStoreBase, Store {
  final _$authenticationAsyncAction =
      AsyncAction('_AuthStoreBase.authentication');

  @override
  Future<void> authentication(String email, String password) {
    return _$authenticationAsyncAction
        .run(() => super.authentication(email, password));
  }

  final _$registerAsyncAction = AsyncAction('_AuthStoreBase.register');

  @override
  Future<void> register(Map<String, dynamic> user, String password) {
    return _$registerAsyncAction.run(() => super.register(user, password));
  }

  final _$updateInfoAsyncAction = AsyncAction('_AuthStoreBase.updateInfo');

  @override
  Future<void> updateInfo(UserCredential credential, user.User user) {
    return _$updateInfoAsyncAction
        .run(() => super.updateInfo(credential, user));
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
