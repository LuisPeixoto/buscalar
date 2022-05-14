import 'package:buscalar/app/classes/Database.dart';
import 'package:buscalar/app/classes/Immobile.dart';
import 'package:firebase_auth/firebase_auth.dart';

class User {
  String? name;
  String email;
  String? phoneNumber;
  String password;

  User(
      {this.name,
      required this.email,
      this.phoneNumber,
      required this.password});

  String get _getName => name ?? '';
  String get _getEmail => email;
  String get _getPhoneNumber => phoneNumber ?? '';
  String get _getPassword => password;

  void setName(String name) => this.name = name;
  void setEmail(String email) => this.email = email;
  void setPhoneNumber(String phoneNumber) => this.phoneNumber = phoneNumber;
  void setPassword(String password) => this.password = password;

  Future<void> authenticate() async {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((_) {
      Database().getUser(email).then((user) {
        //setName(user.name);
        print('teste:$user');
        //setPhoneNumber(user.phoneNumber);
      });
    }).catchError((error) {
      print(error);
    });

    //return auth;
  }

  Future<void> register() async {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then(
      (user) {
        Database().addUser(getUser);
      },
    );
  }

  Map<String, dynamic> get getUser => {
        'name': name,
        'email': email,
        'phoneNumber': phoneNumber,
      };

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
    String description,
    String numberPhone,
    String userId,
    String price,
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
      description,
      numberPhone,
      userId,
      price,
    );
  }
}
