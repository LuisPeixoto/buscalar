import 'package:Buscalar/app/classes/Immobile.dart';
import 'package:Buscalar/app/classes/User.dart';

class Announcement {
  String id;
  User userId;
  Immobile immobileId;
  String createdAt;
  String updatedAt;

  Announcement(
      this.id, this.userId, this.immobileId, this.createdAt, this.updatedAt);

  String get getId => id;
  User get getUserId => userId;
  Immobile get getImmobileId => immobileId;
  String get getCreatedAt => createdAt;
  String get getUpdatedAt => updatedAt;

  void setId(String id) => this.id = id;
  void setUserId(User userId) => this.userId = userId;
  void setImmobileId(Immobile immobileId) => this.immobileId = immobileId;
  void setCreatedAt(String createdAt) => this.createdAt = createdAt;
  void setUpdatedAt(String updatedAt) => this.updatedAt = updatedAt;
}
