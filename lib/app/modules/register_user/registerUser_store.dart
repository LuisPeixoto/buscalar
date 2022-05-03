import 'package:mobx/mobx.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'registerUser_store.g.dart';

class RegisterUserStore = _RegisterUserStoreBase with _$RegisterUserStore;

abstract class _RegisterUserStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    final immobile = FirebaseFirestore.instance.collection('immobile').get();
    immobile.then((value) {
      value.docs.forEach((element) {
        print(element.data());
      });
    });
  }
}
