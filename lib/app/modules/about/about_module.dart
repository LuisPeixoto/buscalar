import 'package:buscalar/app/modules/about/about_page.dart';
import 'package:buscalar/app/modules/about/about_store.dart';
import 'package:buscalar/app/modules/home/home_page.dart';
import 'package:buscalar/app/modules/home/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AboutModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AboutStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => AboutPage()),
  ];
}
