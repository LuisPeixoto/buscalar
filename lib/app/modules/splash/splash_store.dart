import 'package:buscalar/app/repositories/user_local_storage_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'splash_store.g.dart';

class SplashStore = _SplashStoreBase with _$SplashStore;

abstract class _SplashStoreBase with Store {
  UserLocalStorageStore userLocalStorageStore = UserLocalStorageStore();

  @observable
  bool isLoggedIn = false;

  _SplashStoreBase() {
    redirect();
  }

  @action
  Future<void> checkLogin() async {
    var user = await userLocalStorageStore.get();
    if (user.isNotEmpty) {
      isLoggedIn = true;
    }
  }

  @action
  Future<void> redirect() async {
    await checkLogin();

    if (isLoggedIn) {
      Modular.to.pushNamed('/home');
    } else {
      Modular.to.pushNamed('/login');
    }
  }
}
