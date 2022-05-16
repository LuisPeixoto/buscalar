import 'package:mobx/mobx.dart';

part 'userProfile_store.g.dart';

class UserProfileStore = _UserProfileStoreBase with _$UserProfileStore;
abstract class _UserProfileStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}