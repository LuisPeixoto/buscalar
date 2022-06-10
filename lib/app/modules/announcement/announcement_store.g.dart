// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AnnouncementStore on _AnnouncementStoreBase, Store {
  final _$userIdAtom = Atom(name: '_AnnouncementStoreBase.userId');

  @override
  String? get userId {
    _$userIdAtom.reportRead();
    return super.userId;
  }

  @override
  set userId(String? value) {
    _$userIdAtom.reportWrite(value, super.userId, () {
      super.userId = value;
    });
  }

  final _$loadUserLocalStorageAsyncAction =
      AsyncAction('_AnnouncementStoreBase.loadUserLocalStorage');

  @override
  Future<void> loadUserLocalStorage() {
    return _$loadUserLocalStorageAsyncAction
        .run(() => super.loadUserLocalStorage());
  }

  final _$_AnnouncementStoreBaseActionController =
      ActionController(name: '_AnnouncementStoreBase');

  @override
  void setUserId(String id) {
    final _$actionInfo = _$_AnnouncementStoreBaseActionController.startAction(
        name: '_AnnouncementStoreBase.setUserId');
    try {
      return super.setUserId(id);
    } finally {
      _$_AnnouncementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userId: ${userId}
    ''';
  }
}
