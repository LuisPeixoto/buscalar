import 'package:Buscalar/app/classes/Database.dart';
import 'package:Buscalar/app/classes/User.dart' as user;
import 'package:Buscalar/app/repositories/user_local_storage_store.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  FirebaseAuth auth = FirebaseAuth.instance;
  Database database = Database();
  UserLocalStorageStore userLocalStorage = UserLocalStorageStore();

  @action
  Future<void> authentication(String email, String password) async {
    try {
      auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        database.getUser(value.user!.email.toString()).then((data) async {
          var user = data.docs[0];
          await userLocalStorage.clear();
          await userLocalStorage.add(user.id, user.data());
          Modular.to.pushNamed('/home');
        });
      });
    } catch (e) {}
  }

  @action
  Future<void> register(Map<String, dynamic> user, String password) async {
    try {
      auth
          .createUserWithEmailAndPassword(
              email: user['email'], password: password)
          .then((value) => database.addUser(user));
    } catch (e) {}
  }

  @action
  Future<void> updateInfo(UserCredential credential, user.User user) async {
    try {
      //  auth.au
      //credential.user?.updateDisplayName(user.name.toString());
      //credential.user?.linkWithPhoneNumber(user.phoneNumber.toString());
    } catch (e) {}
  }
}
