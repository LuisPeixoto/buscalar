import 'package:buscalar/app/classes/Immobile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class Database {
  FirebaseFirestore database = FirebaseFirestore.instance;
  Future<List<Immobile>> get getAllImmobiles async {
    List<Immobile> immobiles = [];

    final snapshot = await database.collection('immobile').get();

    for (var doc in snapshot.docs) {
      var data = doc.data();
      List<String> images = List<String>.from(data['images'] ?? []);

      var immobile = Immobile(
        data['cep'] ?? '',
        data['city'] ?? '',
        data['borough'] ?? '',
        data['address'] ?? '',
        data['longitude'] ?? '',
        data['latitude'] ?? '',
        images,
        data['numberRoom'] ?? '',
        data['numberBedroom'] ?? '',
        data['type'] ?? '',
        data['area'] ?? '',
        data['garage'] ?? '',
        data['description'] ?? '',
        data['numberPhone'] ?? '',
        data['userId'] ?? '',
        data['price'] ?? '',
      );

      immobile.setId(doc.id);

      immobiles.add(immobile);
    }

    return immobiles;
  }

  Future<void> addImmobile(immobile) async {
    await database.collection('immobile').add(immobile);
  }

  Future<void> updateImmobile(immobile, String id) async {
    await database.collection('immobile').doc(id).update(immobile);
  }

  Future<void> deleteImmobile(String id) async {
    await database.collection('immobile').doc(id).delete();
  }

  void getImmobile(String id) {
    database.collection('immobile').doc(id).get();
  }

  void getAllUsers() {
    database.collection('users').get();
  }

  void addUser(user) {
    database.collection('users').add(user);
  }

  void deleteUser(String id) {
    database.collection('users').doc(id).delete();
  }

  void updateUser(String id, Map<String, dynamic> user) {
    database.collection('users').doc(id).update(user);
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getUser(String email) {
    return database.collection('users').where('email', isEqualTo: email).get();
  }

  Future<String> uploadImage(XFile image) async {
    File? _photo;

    final ref = FirebaseStorage.instance.ref('/images').child(
        'buscalar-${DateTime.now().millisecondsSinceEpoch}${image.hashCode.toString()}');

    if (image != null) {
      _photo = File(image.path);
      await ref.putFile(_photo);
    }

    return await ref.getDownloadURL();
  }
}
