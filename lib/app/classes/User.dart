import 'package:buscalar/app/classes/Immobile.dart';

class User {
  String name;
  String email;
  String phoneNumber;
  String password;

  User(this.name, this.email, this.phoneNumber, this.password);

  String get _getName => name;
  String get _getEmail => email;
  String get _getPhoneNumber => phoneNumber;
  String get _getPassword => password;

  set _setName(String name) => this.name = name;
  set _setEmail(String email) => this.email = email;
  set _setPhoneNumber(String phoneNumber) => this.phoneNumber = phoneNumber;
  set _setPassword(String password) => this.password = password;

  void _create_announcement(
    String cep,
    String city,
    String borough,
    String address,
    String longitude,
    String latitude,
    List<String> images,
    String numberRoom,
    String numberBedroom,
    String type,
    String area,
    String garage,
  ) {
    Immobile immobile = Immobile(
      cep,
      city,
      borough,
      address,
      longitude,
      latitude,
      images,
      numberRoom,
      numberBedroom,
      type,
      area,
      garage,
    );
  }
}
