import 'package:Buscalar/app/classes/Immobile.dart';
import 'package:Buscalar/app/repositories/user_local_storage_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'announcement_store.g.dart';

class AnnouncementStore = _AnnouncementStoreBase with _$AnnouncementStore;

abstract class _AnnouncementStoreBase with Store {
  final Map item;
  late Immobile immobile;
  UserLocalStorageStore userLocalStorageStore = UserLocalStorageStore();

  _AnnouncementStoreBase(@Data this.item) {
    loadUserLocalStorage();
    immobile = item['immobile'];
  }

  @observable
  String? userId;
  @action
  void setUserId(String id) => userId = id;

  @action
  Future<void> loadUserLocalStorage() async {
    var user = await userLocalStorageStore.get();
    setUserId(user.keys.first);
  }
}
