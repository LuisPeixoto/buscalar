import 'package:buscalar/app/modules/register_announcement/register_announcement_store.dart';
import 'package:buscalar/app/modules/register_announcement/register_announcement_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../home/home_store.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => RegisterAnnouncementStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
    ChildRoute('/register', child: (_, args) => RegisterAnnouncementPage()),
  ];
}
