import 'package:Buscalar/app/classes/User.dart';

class Favorites {
  String id;
  User userId;
  String AnnouncementId;

  Favorites(this.id, this.userId, this.AnnouncementId);

  String get getId => id;
  User get getUserId => userId;
  String get getAnnouncementId => AnnouncementId;

  void setId(String id) => this.id = id;
  void setUserId(User userId) => this.userId = userId;
  void setAnnouncementId(String AnnouncementId) =>
      this.AnnouncementId = AnnouncementId;
}
