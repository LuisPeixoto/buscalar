import 'package:Buscalar/app/modules/home/home_store.dart';
import 'package:Buscalar/app/modules/splash/splash_module.dart';
import 'package:Buscalar/app/modules/splash/splash_store.dart';
import 'package:Buscalar/app/repositories/user_local_storage_store.dart';
import 'package:Buscalar/app/modules/register_user/registerUser_store.dart';
import 'package:Buscalar/app/services/auth_store.dart';
import 'package:Buscalar/app/modules/about/about_module.dart';
import 'package:Buscalar/app/modules/about/about_store.dart';
import 'package:Buscalar/app/modules/announcement/announcement_module.dart';
import 'package:Buscalar/app/modules/announcement/announcement_store.dart';
import 'package:Buscalar/app/modules/list_announcement/listAnnouncement_page.dart';
import 'package:Buscalar/app/modules/list_announcement/listAnnouncement_store.dart';
import 'package:Buscalar/app/modules/login/login_module.dart';
import 'package:Buscalar/app/modules/login/login_page.dart';
import 'package:Buscalar/app/modules/login/login_store.dart';
import 'package:Buscalar/app/modules/register_announcement/register_announcement_module.dart';
import 'package:Buscalar/app/modules/register_announcement/register_announcement_store.dart';
import 'package:Buscalar/app/modules/register_user/registerUser_module.dart';
import 'package:Buscalar/app/modules/user_profile/userProfile_module.dart';
import 'package:Buscalar/app/modules/user_profile/userProfile_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => UserLocalStorageStore()),
    Bind.lazySingleton((i) => AuthStore()),
    Bind.factory((i) => UserProfileStore()),
    Bind.factory((i) => LoginStore()),
    Bind.factory((i) => SplashStore()),
    Bind.factory((i) => HomeStore()),
    Bind.factory((i) => RegisterUserStore()),
    Bind.factory((i) => AnnouncementStore(i.args.data)),
    Bind.factory((i) => ListAnnouncementStore(i.args.data)),
    Bind.factory((i) => RegisterAnnouncementStore(i.args.data)),
    Bind.factory((i) => AboutStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute('/user-profile', module: UserProfileModule()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/about', module: AboutModule()),
    ModuleRoute('/login', module: LoginModule()),
    ModuleRoute('/announcement', module: AnnouncementModule()),
    ModuleRoute('/register', module: RegisterAnnouncementModule()),
    ModuleRoute('/register-user', module: RegisterUserModule()),
    ChildRoute('/list-announcemnt', child: (_, args) => ListAnnouncementPage()),
  ];
}
