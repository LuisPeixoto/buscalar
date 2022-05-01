import 'package:mobx/mobx.dart';

part 'registerUser_store.g.dart';

class RegisterUserStore = _RegisterUserStoreBase with _$RegisterUserStore;
abstract class _RegisterUserStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}