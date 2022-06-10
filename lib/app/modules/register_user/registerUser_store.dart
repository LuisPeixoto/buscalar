import 'package:Buscalar/app/classes/User.dart';
import 'package:mobx/mobx.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'registerUser_store.g.dart';

class RegisterUserStore = _RegisterUserStoreBase with _$RegisterUserStore;

abstract class _RegisterUserStoreBase with Store {
  @observable
  String? name;

  @observable
  String? email;

  @observable
  String? phoneNumber;

  @observable
  String? password;

  @action
  void setName(String? value) => name = value;
  void setEmail(String? value) => email = value;
  void setPhoneNumber(String? value) => phoneNumber = value;
  void setPassword(String? value) => password = value;

  @action
  Future<void> registerUser() async {
    var user = User(
        name: name,
        email: email!,
        phoneNumber: phoneNumber,
        password: password!);
    await user.register();
  }
}
