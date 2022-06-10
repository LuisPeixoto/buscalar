import 'package:buscalar/app/classes/Database.dart';
import 'package:buscalar/app/classes/Immobile.dart';
import 'package:buscalar/app/repositories/user_local_storage_store.dart';
import 'package:mobx/mobx.dart';

part 'userProfile_store.g.dart';

class UserProfileStore = _UserProfileStoreBase with _$UserProfileStore;

abstract class _UserProfileStoreBase with Store {
  UserLocalStorageStore userLocalStorageStore = UserLocalStorageStore();
  _UserProfileStoreBase() {
    getAllImmobiles();
    loadUserLocalStorage();
  }
  @observable
  List<Immobile> immobiles = [];

  @observable
  String? userName;

  @observable
  String? userEmail;

  @observable
  List<Immobile> myImmobiles = [];

  @observable
  List<Immobile> myImmobilesFavorites = [];

  @observable
  String? userId;

  Future<void> loadUserLocalStorage() async {
    var user = await userLocalStorageStore.get();
    setUserName(user.values.first['name']);
    setUserId(user.keys.first);
    setUserEmail(user.values.first['email']);
  }

  Future<void> logout() async {
    await userLocalStorageStore.clear();
  }

  @action
  void setUserId(String id) => userId = id;

  @action
  void setUserName(String? value) {
    userName = value;
  }

  @action
  void setUserEmail(String? value) {
    userEmail = value;
  }

  @action
  void setImmobiles(List<Immobile> value) {
    immobiles = value;
  }

  @action
  void setMyImmobiles(List<Immobile> value) {
    myImmobiles = value;
  }

  @action
  void setMyImmobilesFavorites(List<Immobile> value) {
    myImmobilesFavorites = value;
  }

  @action
  Future<void> getAllImmobiles() async {
    var data = await Database().getAllImmobiles;
    setMyImmobiles(
        data.where((immobile) => immobile.userId == userId).toList());

    setImmobiles(data);
  }
}
