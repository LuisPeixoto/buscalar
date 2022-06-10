import 'package:Buscalar/app/modules/register_user/registerUser_page.dart';
import 'package:Buscalar/app/modules/register_user/registerUser_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterUserModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RegisterUserStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => RegisterUserPage()),
  ];
}
