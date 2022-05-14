import 'package:mobx/mobx.dart';

part 'announcement_store.g.dart';

class AnnouncementStore = _AnnouncementStoreBase with _$AnnouncementStore;
abstract class _AnnouncementStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}