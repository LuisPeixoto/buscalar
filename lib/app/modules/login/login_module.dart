import 'package:Buscalar/app/modules/login/login_page.dart';
import 'package:Buscalar/app/modules/login/login_store.dart';
import 'package:Buscalar/app/modules/home/home_page.dart';
import 'package:Buscalar/app/modules/home/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginStore()),
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LoginPage()),
    ChildRoute('/home', child: (_, args) => HomePage()),
  ];
}
