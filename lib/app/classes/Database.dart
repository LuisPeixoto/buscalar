import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class Database {
  List get getAllImmobile {
    List immobiles = [];

    FirebaseFirestore.instance.collection('immobile').get().then(
          (value) => value.docs.forEach(
            (element) {
              immobiles.add(element.data());
            },
          ),
        );

    return immobiles;
  }

  Future<void> addImmobile(immobile) async {
    await FirebaseFirestore.instance.collection('immobile').add(immobile);
  }

  void deleteImmobile(String id) {
    FirebaseFirestore.instance.collection('immobile').doc(id).delete();
  }

  void updateImmobile(String id, Map<String, dynamic> immobile) {
    FirebaseFirestore.instance.collection('immobile').doc(id).update(immobile);
  }

  void getImmobile(String id) {
    FirebaseFirestore.instance.collection('immobile').doc(id).get();
  }

  void getAllUsers() {
    FirebaseFirestore.instance.collection('users').get();
  }

  void addUser(Map<String, dynamic> user) {
    FirebaseFirestore.instance.collection('users').add(user);
  }

  void deleteUser(String id) {
    FirebaseFirestore.instance.collection('users').doc(id).delete();
  }

  void updateUser(String id, Map<String, dynamic> user) {
    FirebaseFirestore.instance.collection('users').doc(id).update(user);
  }

  void getUser(String id) {
    FirebaseFirestore.instance.collection('users').doc(id).get();
  }

  Future<String> uploadImage(XFile image) async {
    File? _photo;

    final ref = FirebaseStorage.instance.ref('/images').child(
        'buscalar-${DateTime.now().millisecondsSinceEpoch}${image.hashCode.toString()}');

    if (image != null) {
      _photo = File(image.path);
      await ref.putFile(_photo);
    }

    print('uploading image: ${ref.getDownloadURL()}');

    return await ref.getDownloadURL();
  }
}
