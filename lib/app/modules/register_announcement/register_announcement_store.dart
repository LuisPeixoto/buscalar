import 'package:buscalar/app/classes/Database.dart';
import 'package:mobx/mobx.dart';

part 'register_announcement_store.g.dart';

class RegisterAnnouncementStore = _RegisterAnnouncementStoreBase
    with _$RegisterAnnouncementStore;

abstract class _RegisterAnnouncementStoreBase with Store {
  @observable
  int value = 0;

  @action
  void save(immobile) {
    Database().addImmobile(immobile.getImmobile);
  }
}
