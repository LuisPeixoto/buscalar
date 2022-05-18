import 'package:buscalar/app/classes/Database.dart';
import 'package:buscalar/app/classes/Immobile.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'listAnnouncement_store.g.dart';

class ListAnnouncementStore = _ListAnnouncementStoreBase
    with _$ListAnnouncementStore;

abstract class _ListAnnouncementStoreBase with Store {
  @observable
  List<Immobile> immobiles = [];

  @observable
  String searchInput = "";

  @computed
  List<Immobile> get listAnnouncement => search(immobiles);

  List<Immobile> search(List<Immobile> list) {
    var immobileMaped = list
        .map((immobile) => [
              immobile.id.toString(),
              '${immobile.type} ${immobile.borough} ${immobile.city}'
            ])
        .toList();

    var filtered = immobileMaped
        .where((element) =>
            element[1].toUpperCase().contains(searchInput.toUpperCase()))
        .toList();

    var id = filtered.map((e) => e[0]).toList();

    return list.where((element) => id.contains(element.id.toString())).toList();
  }

  final List<Immobile>? items;
  _ListAnnouncementStoreBase(@Data this.items) {
    if (items == null) {
      getAllImmobiles();
    } else {
      setImmobiles(items!);
    }
  }

  @action
  void setSearch(String? value) {
    searchInput = value ?? "";
  }

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
