import 'package:buscalar/app/modules/about/about_module.dart';
import 'package:buscalar/app/modules/about/about_store.dart';
import 'package:buscalar/app/modules/announcement/announcement_module.dart';
import 'package:buscalar/app/modules/announcement/announcement_store.dart';
import 'package:buscalar/app/modules/list_announcement/listAnnouncement_page.dart';
import 'package:buscalar/app/modules/list_announcement/listAnnouncement_store.dart';
import 'package:buscalar/app/modules/login/login_module.dart';
import 'package:buscalar/app/modules/login/login_page.dart';
import 'package:buscalar/app/modules/login/login_store.dart';
import 'package:buscalar/app/modules/register_announcement/register_announcement_module.dart';
import 'package:buscalar/app/modules/register_announcement/register_announcement_store.dart';
import 'package:buscalar/app/modules/register_user/registerUser_module.dart';
import 'package:buscalar/app/modules/user_profile/userProfile_module.dart';
import 'package:buscalar/app/modules/user_profile/userProfile_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => UserProfileStore()),
    Bind.factory((i) => LoginStore()),
    Bind.factory((i) => AnnouncementStore(i.args.data)),
    Bind.factory((i) => ListAnnouncementStore(i.args.data)),
    Bind.factory((i) => RegisterAnnouncementStore(i.args.data)),
    Bind.factory((i) => AboutStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute('/user-profile', module: UserProfileModule()),
    ModuleRoute('/about', module: AboutModule()),
    ModuleRoute('/login', module: LoginModule()),
    ModuleRoute('/announcement', module: AnnouncementModule()),
    ModuleRoute('/register', module: RegisterAnnouncementModule()),
    ChildRoute('/list-announcemnt', child: (_, args) => ListAnnouncementPage()),
  ];
}
