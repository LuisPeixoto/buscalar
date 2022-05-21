import 'package:buscalar/app/modules/announcement/announcement_page.dart';
import 'package:buscalar/app/modules/announcement/announcement_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AnnouncementModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => AnnouncementStore(i.args.data)),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => AnnouncementPage()),
  ];
}
