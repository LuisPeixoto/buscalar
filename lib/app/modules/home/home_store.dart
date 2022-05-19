import 'package:buscalar/app/classes/Database.dart';
import 'package:buscalar/app/classes/Immobile.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  int counter = 0;

  HomeStoreBase() {
    getAllImmobiles();
    print('dsadlaldpaldpadlpa');
  }

  @observable
  List<Immobile> immobiles = [];
  @action
  void setImmobiles(List<Immobile> value) {
    immobiles = value;
  }

  @action
  Future<void> getAllImmobiles() async {
    var data = await Database().getAllImmobiles;
    setImmobiles(data);
  }
}
