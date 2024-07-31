import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  static const String ID = "id";
  static const String NAME = "name";
  static const String EMAIL = "email";

  late String id;
  late String name;
  late String email;

  UserModel({required this.id, required this.name, required this.email});

  UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>?;
    if (data != null) {
      id = data[ID] ?? '';
      name = data[NAME] ?? '';
      email = data[EMAIL] ?? '';
    } else {
      id = '';
      name = '';
      email = '';
    }
  }

  factory UserModel.defaultDevicee() {
    return UserModel(
      id: '',
      name: '',
      email: '',
    );
  }
}
