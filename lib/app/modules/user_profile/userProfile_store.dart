import 'package:buscalar/app/classes/Database.dart';
import 'package:buscalar/app/classes/Immobile.dart';
import 'package:mobx/mobx.dart';

part 'userProfile_store.g.dart';

class UserProfileStore = _UserProfileStoreBase with _$UserProfileStore;

abstract class _UserProfileStoreBase with Store {
  _UserProfileStoreBase() {
    getAllImmobiles();
  }
  @observable
  List<Immobile> immobiles = [];

  @observable
  List<Immobile> myImmobiles = [];

  @observable
  List<Immobile> myImmobilesFavorites = [];

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
    setMyImmobiles(data.where((immobile) => immobile.userId == '1').toList());

    setImmobiles(data);
  }
}
