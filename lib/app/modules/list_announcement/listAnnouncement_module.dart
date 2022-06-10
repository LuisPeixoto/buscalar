import 'package:Buscalar/app/modules/announcement/announcement_page.dart';
import 'package:Buscalar/app/modules/announcement/announcement_store.dart';
import 'package:Buscalar/app/modules/list_announcement/listAnnouncement_page.dart';
import 'package:Buscalar/app/modules/list_announcement/listAnnouncement_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ListAnnouncementModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ListAnnouncementStore(i.args.data)),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ListAnnouncementPage()),
  ];
}
