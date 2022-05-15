import 'package:buscalar/app/modules/about/about_page.dart';
import 'package:buscalar/app/modules/about/about_store.dart';
import 'package:buscalar/app/modules/announcement/announcement_page.dart';
import 'package:buscalar/app/modules/announcement/announcement_store.dart';
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
    Bind.lazySingleton((i) => AnnouncementStore()),
    Bind.lazySingleton((i) => AboutStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
    ChildRoute('/register', child: (_, args) => RegisterAnnouncementPage()),
    ChildRoute('/announcemnt', child: (_, args) => AnnouncementPage()),
    ChildRoute('/about', child: (_, args) => AboutPage()),
  ];
}
