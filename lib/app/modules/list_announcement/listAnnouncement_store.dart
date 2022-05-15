import 'package:mobx/mobx.dart';

part 'listAnnouncement_store.g.dart';

class ListAnnouncementStore = _ListAnnouncementStoreBase with _$ListAnnouncementStore;
abstract class _ListAnnouncementStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}