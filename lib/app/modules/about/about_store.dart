import 'package:mobx/mobx.dart';

part 'about_store.g.dart';

class AboutStore = _AboutStoreBase with _$AboutStore;
abstract class _AboutStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}