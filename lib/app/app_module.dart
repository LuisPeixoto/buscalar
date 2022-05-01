import 'package:buscalar/app/modules/login/login_module.dart';
import 'package:buscalar/app/modules/register_user/registerUser_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: RegisterUserModule()),
  ];
}
