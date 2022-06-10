import 'dart:async';

import 'package:buscalar/app/classes/User.dart';
import 'package:buscalar/app/utils/path_provider.dart';
import 'package:hive/hive.dart';
import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

part 'user_local_storage_store.g.dart';

class UserLocalStorageStore = _UserLocalStorageStoreBase
    with _$UserLocalStorageStore;

abstract class _UserLocalStorageStoreBase with Store {
  final Completer<Box> completer = Completer<Box>();

  _UserLocalStorageStoreBase() {
    _initDb();
  }

  Future<void> _initDb() async {
    final directory = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(directory.path);

    final box = Hive.openBox('current_user');

    if (!completer.isCompleted) completer.complete(box);
  }

  @override
  Future<void> add(String id, Map<dynamic, dynamic> user) async {
    try {
      final box = await completer.future;
      await box.put(id, user);
    } on Exception catch (err) {}
  }

  @override
  Future<Map<dynamic, dynamic>> get() async {
    final box = await completer.future;
    return await box.toMap();
  }

  @override
  Future<void> clear() async {
    final box = await completer.future;
    await box.clear();
  }
}
