import 'package:buscalar/app/classes/User.dart';
import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  @observable
  String? email;

  @observable
  String? password;

  @action
  void setEmail(String? value) => email = value;

  @action
  void setPassword(String? value) => password = value;

  @action
  Future<void> login() async {
    var user = User(email: email!, password: password!);

    await user.authenticate();
  }
}
