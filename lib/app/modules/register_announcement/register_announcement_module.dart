import 'package:Buscalar/app/modules/register_announcement/register_announcement_store.dart';
import 'package:Buscalar/app/modules/register_announcement/register_announcement_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterAnnouncementModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RegisterAnnouncementStore(i.args.data)),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => RegisterAnnouncementPage(),
    ),
  ];
}
