import 'package:Buscalar/app/modules/about/about_page.dart';
import 'package:Buscalar/app/modules/about/about_store.dart';
import 'package:Buscalar/app/modules/announcement/announcement_page.dart';
import 'package:Buscalar/app/modules/announcement/announcement_store.dart';
import 'package:Buscalar/app/modules/list_announcement/listAnnouncement_page.dart';
import 'package:Buscalar/app/modules/list_announcement/listAnnouncement_store.dart';
import 'package:Buscalar/app/modules/register_announcement/register_announcement_store.dart';
import 'package:Buscalar/app/modules/register_announcement/register_announcement_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../home/home_store.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
  ];
}
