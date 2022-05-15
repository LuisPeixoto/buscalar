import 'package:buscalar/app/modules/announcement/announcement_page.dart';
import 'package:buscalar/app/modules/announcement/announcement_store.dart';
import 'package:buscalar/app/modules/list_announcement/listAnnouncement_page.dart';
import 'package:buscalar/app/modules/list_announcement/listAnnouncement_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ListAnnouncementModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ListAnnouncementStore()),
    Bind.lazySingleton((i) => AnnouncementStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ListAnnouncementPage()),
    ChildRoute('/announcemnt', child: (_, args) => AnnouncementPage()),
  ];
}
