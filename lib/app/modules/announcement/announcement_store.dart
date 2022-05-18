import 'package:buscalar/app/classes/Immobile.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'announcement_store.g.dart';

class AnnouncementStore = _AnnouncementStoreBase with _$AnnouncementStore;

abstract class _AnnouncementStoreBase with Store {
  final Map item;
  late Immobile immobile;

  _AnnouncementStoreBase(@Data this.item) {
    immobile = item['immobile'];
  }
}
